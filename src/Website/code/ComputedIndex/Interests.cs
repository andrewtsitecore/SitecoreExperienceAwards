namespace Officecore.Website.code.ComputedIndex
{
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Runtime.Caching;

    using Officecore.Website.code.Constants;

    using Sitecore.Configuration;
    using Sitecore.ContentSearch;
    using Sitecore.Data;
    using Sitecore.Data.Fields;
    using Sitecore.Data.Items;

    public class Interests : ComputedIndexFieldBase
    {
        private static List<ID> GetPossibleInterests()
        {
            ObjectCache cache = MemoryCache.Default;
            var interests = cache["interests"] as List<ID>;

            if (interests != null)
            {
                // interests already in cache
                return interests;
            }

            var masterDb = Factory.GetDatabase("master");

            var ids = masterDb.GetItem("/sitecore/content/Global/Tags/Interests").Children.Select(x => x.ID).ToList();
            cache.Set("interests", ids, DateTimeOffset.Now.AddMinutes(1));

            return ids;
        }

        public override object ComputeFieldValue(IIndexable indexable)
        {
            if (!this.IsIndexableItem(indexable, new IsIndexableItemOptions
                        {
                            IncludeRootIDs = new List<ID> { DataRepositoryConstants.CONTENT_ROOT }
                        }))
            {
                return null;
            }

            var item = (Item)(SitecoreIndexableItem)indexable;
            MultilistField multiListField = item.Fields["Tags"];

            if (multiListField == null) return null;

            var possibleInterests = GetPossibleInterests();
            var interests = multiListField.TargetIDs.Intersect(possibleInterests).ToList();

            var isStrict = Settings.GetBoolSetting("Indexing.Interests.IsStrict", false);
            if (isStrict)
            {
                return interests;
            }

            // The main reason for this computed field: If no interests are selected, ALL interests are selected!
            return interests.Any() ? interests : possibleInterests;
        }
    }
}