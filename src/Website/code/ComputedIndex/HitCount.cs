namespace Officecore.Website.code.ComputedIndex
{
    using System;
    using System.Collections.Generic;

    using Sitecore.Analytics.Reports.Data.DataAccess.DataAdapters;
    using Sitecore.ContentSearch;
    using Sitecore.ContentSearch.ComputedFields;
    using Sitecore.Data.DataProviders.Sql;
    using Sitecore.Diagnostics;
    using Sitecore.Services;

    public class HitCount : IComputedIndexField
    {
        // last loaded the dictionary from the database
        private static DateTime? _lastQueried;

        // last read from the loaded dictionary
        private static DateTime? _lastAccessed;

        // periodically drop the cached dictionary
        private static AlarmClock _alarmClock;

        // in case the alarm clock rings during indexing
        private static object _dictionaryLock = new object();

        // map item IDs to corresponding hit counts
        private static Dictionary<string, int> _hitCounts;

        public HitCount()
        {
            if (_alarmClock == null)
            {
                _alarmClock = new AlarmClock(new TimeSpan(0, 5, 0));
                _alarmClock.Ring += (sender, args) => Handle();
            }
        }

        // required by the IComputedIndexField interface
        public string FieldName { get; set; }

        // required by the IComputedIndexField interface
        public string ReturnType { get; set; }

        // compute the index field value for the item
        public object ComputeFieldValue(IIndexable indexable)
        {
            Assert.ArgumentNotNull(indexable, "indexable");

            lock (_dictionaryLock)
            {
                ManageHitQuery();
                var id = indexable.Id.ToString().Trim('{', '}');
                var count = _hitCounts.ContainsKey(id) ? _hitCounts[id] : 0;
                _lastAccessed = DateTime.Now;
                return count;
            }
        }

        private static void Handle()
        {
            // only clear the dictionary after no access for at least one second
            if (_lastAccessed != null
              && _lastAccessed.Value.AddSeconds(1).CompareTo(DateTime.Now) > 0)
            {
                return;
            }

            lock (_dictionaryLock)
            {
                _lastAccessed = null;
                _lastQueried = null;
                _hitCounts = null;
            }
        }

        // try to avoid running the query more than once every five minutes
        private void ManageHitQuery()
        {
            // if we already queried the table
            // less than five minutes ago
            if (_lastQueried != null
              && _lastQueried.Value.AddMinutes(5).CompareTo(DateTime.Now) > 0)
            {
                return;
            }

            _hitCounts = new Dictionary<string, int>();
            var query = string.Format("SELECT ItemId, count('x') FROM Pages GROUP BY ItemId");
            DataAdapterManager.Sql.ReadMany(
              query, PopulateDictionary, new object[0]);
            _lastQueried = DateTime.Now;
        }

        private void PopulateDictionary(DataProviderReader reader)
        {
            while (reader.Read())
            {
                string id = DataAdapterManager.Sql.GetGuid(
                  0,
                  reader).ToString().ToUpper();
                int count = DataAdapterManager.Sql.GetInt(
                  1,
                  reader);

                if (count > 0)
                {
                    _hitCounts[id] = count;
                }
            }

            _lastQueried = DateTime.Now;
        }
    }
}