namespace Officecore.Website.code.Helpers
{
    using System.Collections.Generic;
    using System.Web;

    using Sitecore.ContentSearch.Utilities;

    public static class SearchHelpers
    {
        public static List<SearchStringModel> ExtractSearchQuery(string searchQuery)
        {
            var list = new List<SearchStringModel>();
            searchQuery = HttpUtility.UrlDecode(searchQuery);
            searchQuery = searchQuery.Replace("text:;", string.Empty);
            var strArray = searchQuery.Split(new [] { ';' });
            for (int i = 0; i < strArray.Length; i++)
            {
                if (!string.IsNullOrEmpty(strArray[i]))
                {
                    var item = new SearchStringModel
                    {
                        Type = strArray[i].Split(new [] { ':' })[0],
                        Value = strArray[i].Split(new [] { ':' })[1]
                    };
                    list.Add(item);
                }
            }

            return list;
        }
    }
}