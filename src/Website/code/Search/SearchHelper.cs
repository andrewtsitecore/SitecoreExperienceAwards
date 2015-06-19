namespace Officecore.Website.code.DataRepositories
{
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Linq.Expressions;

    using Officecore.Website.code.Helpers;
    using Officecore.Website.code.Model;
    using Officecore.Website.code.Search;

    using Sitecore;
    using Sitecore.ContentSearch;
    using Sitecore.ContentSearch.Linq;
    using Sitecore.ContentSearch.Linq.Utilities;
    using Sitecore.ContentSearch.SearchTypes;
    using Sitecore.Data;
    using Sitecore.Data.Items;

    public class SearchHelper
    {
        public string Index
        {
            get
            {
                return GetSearchIndex();
            }
        }

        public static string GetSearchIndex()
        {
            return Context.Database.Name == "master" ? "sitecore_master_index" : "sitecore_web_index";
        }

        public static Expression<Func<TagsResultItem, bool>> GetInterestsPredicate()
        {
            var predicate = PredicateBuilder.True<TagsResultItem>();

            foreach (var interestID in ProfileHelper.GetInterests())
            {
                predicate = predicate.Or(item => item.Interests.Contains(interestID));
            }

            return predicate;
        }

        public IEnumerable<T> SearchWithFacets<T>(Dictionary<string, string> facets, HashSet<ID> SearchTemplates, out List<FacetCategory> SearchFacetes, out int NumResults, Expression<Func<T, bool>> query, Expression<Func<T, string>> facetSelector) where T : SearchResultItem, new()
        {
            using (var context = ContentSearchManager.GetIndex(Index).CreateSearchContext())
            {
                var predicate = PredicateBuilder.True<T>();

                foreach (ID template in SearchTemplates)
                {
                    predicate = predicate.Or(item => item.TemplateId == template);
                }

                foreach (var selectedFacet in facets)
                {
                    predicate = predicate.And(item => item[selectedFacet.Key] == selectedFacet.Value);
                }

                var results = context.GetQueryable<T>()
                        .Where(query)
                        .Where(item => item.Name != "__Standard Values")
                        .Where(item => item.Language == Context.Language.Name)
                    //.Where(item => item.IsLatestVersion)
                        .Where(predicate)
                        .FacetOn(facetSelector)
                        .OrderByDescending(item => item["date"])
                        .Take(20);

                var res = results.GetResults();

                NumResults = res.TotalSearchResults;

                if (res.Facets != null)
                {
                    SearchFacetes = res.Facets.Categories;
                }
                else
                {
                    SearchFacetes = null;
                }


                return results.ToList();
            }
        }

        public IEnumerable<T> Search<T>(HashSet<ID> SearchTemplates, out int NumResults, Expression<Func<T, bool>> query) where T : SearchResultItem, new()
        {
            using (var context = ContentSearchManager.GetIndex(Index).CreateSearchContext())
            {
                var predicate = PredicateBuilder.True<T>();

                foreach (ID template in SearchTemplates)
                {
                    predicate = predicate.Or(item => item.TemplateId == template);
                }

                var results = context.GetQueryable<T>()
                    .Where(query)
                    .Where(item => item.Name != "__Standard Values")
                    .Where(item => item.Language == Context.Language.Name)
                    //.Where(item => item.IsLatestVersion)
                    .Where(predicate);

                var res = results.GetResults();

                NumResults = res.TotalSearchResults;

                return results.ToList();
            }
        }

        public static IEnumerable<Item> GetItemsFromSearchResults(IEnumerable<ResultItem> results)
        {
            foreach (var sri in results)
            {
                var item = sri.GetItem();
                if (item == null)
                {
                    continue;
                }

                yield return item;
            }
        }
    }
}