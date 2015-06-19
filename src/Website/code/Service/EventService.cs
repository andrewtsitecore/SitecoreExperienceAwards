namespace Officecore.Website.code.Service
{
    using System;
    using System.Collections.Generic;
    using System.Linq;

    using Officecore.Website.code.DataRepositories;
    using Officecore.Website.code.Search;

    using Sitecore.ContentSearch.Linq;
    using Sitecore.ContentSearch.Linq.Utilities;
    using Sitecore.Data;
    using Sitecore.Data.Items;
    using Sitecore.Text;
    using Sitecore.Web;

    public class EventService
    {
        public static List<Item> GetEvents(string searchTerm)
        {
            var searchTemplates = new HashSet<ID>
            {
                new ID("{8104A35C-485D-4241-B80D-83E0C1926D9F}")
            };

            var helper = new SearchHelper();

            var facets = new Dictionary<string, string>();
            var querystring = new UrlString(WebUtil.GetRawUrl());
            
            foreach (var parameter in querystring.Parameters.AllKeys)
            {
                if (!string.Equals("searchStr", parameter, StringComparison.OrdinalIgnoreCase))
                {
                    if (!parameter.StartsWith("sc_"))
                    {
                        facets.Add(parameter, querystring.Parameters[parameter]);
                    }
                }
            }

            List<FacetCategory> _facets;
            int numResults;

            // Do the base predicate
            var predicate = PredicateBuilder.True<TagsResultItem>();
            predicate = predicate.And(item => item.IsLatestVersion);

            if (!string.IsNullOrWhiteSpace(searchTerm))
            {
                predicate = predicate.And(item => item.Terms.Contains(searchTerm));
            }

            // Now check the roles
            predicate = predicate.And(SearchHelper.GetInterestsPredicate());

            var results = helper.SearchWithFacets(facets, searchTemplates, out _facets, out numResults, predicate, item => item.DateRange);

            return SearchHelper.GetItemsFromSearchResults(results).ToList();
        }
    }
}