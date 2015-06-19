namespace Officecore.Website.layouts.Officecore.Controls.Desktop.Products
{
    using System;
    using System.Collections.Generic;
    using System.Web.UI;

    using global::Officecore.Website.code.DataRepositories;
    using global::Officecore.Website.code.Model;

    using Sitecore.Data;
    using Sitecore.Web;

    public partial class Test_Search_Results : UserControl
    {

        private static readonly string templateProduct = "{1A7B1DFF-E172-4DCF-8F01-B34571075756}";
        private static readonly string templateProductCategory = "{7633B9E6-A44F-4318-85AE-C27D12D6DF11}";

        public HashSet<ID> SearchTemplates = new HashSet<ID> { new ID(templateProduct), new ID(templateProductCategory) };

        private void Page_Load(object sender, EventArgs e)
        {
            SearchTerm = GetSearchTerm();
                    
            int numResults = 0;
            var helper = new SearchHelper();
            IEnumerable<ResultItem> results = helper.Search<ResultItem>(SearchTemplates, out numResults,
                                                                                item => item.DisplayName.Contains(SearchTerm));
            srchResults.DataSource = results;
            srchResults.DataBind();
            SearchMsg = numResults.ToString() + " results returned";

            DataBind();
        }

        private string _searchTerm;
        public string SearchTerm
        {
            get
            {
                if (_searchTerm == null)
                {
                    return string.Empty;
                }
                return _searchTerm;
            }
            set { _searchTerm = value; }
        }

        private string _searchMsg;
        public string SearchMsg
        {
            get
            {
                if (_searchMsg == null)
                {
                    return string.Empty;
                }
                return _searchMsg;
            }
            set { _searchMsg = value; }
        }
        private string GetSearchTerm()
        {
            var searchterm = Request.Form.Get("SearchTerm");
            if (searchterm == null || searchterm == String.Empty)
            {
                searchterm = Server.UrlDecode(WebUtil.GetQueryString("SearchTermHeader"));
            }
            if (searchterm == null)
            {
                searchterm = String.Empty;
            }
            return searchterm;
        }
        
    }

    
}