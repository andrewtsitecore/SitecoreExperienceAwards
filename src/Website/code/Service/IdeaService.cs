namespace Officecore.Website.code.Service
{
    using System.Collections.Generic;
    using System.Linq;

    using Officecore.Website.code.DataRepositories;
    using Officecore.Website.code.Model;

    using Sitecore.ContentSearch.Linq.Utilities;
    using Sitecore.Data;
    using Sitecore.Data.Items;

    public class IdeaService
    {
        public static List<Item> GetIdeas(string searchTerm)
        {
            var searchTemplates = new HashSet<ID>
            {
                new ID("{26E66C62-D9A8-4B2A-BC21-0895ACD4B38E}")
            };

            var helper = new SearchHelper();

            int numResults;

            // Do the base predicate
            var predicate = PredicateBuilder.True<ResultItem>();
            predicate = predicate.And(item => item.IsLatestVersion);

            var results = helper.Search(searchTemplates, out numResults, predicate);
            return SearchHelper.GetItemsFromSearchResults(results).ToList();
        }
    }
}