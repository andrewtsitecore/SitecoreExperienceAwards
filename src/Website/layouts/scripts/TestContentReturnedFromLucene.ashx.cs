namespace Officecore.Website.layouts.scripts
{
    using System.Collections;
    using System.Linq;
    using System.Web;
    using Sitecore.ContentSearch;
    using Sitecore.ContentSearch.SearchTypes;
    using Sitecore.Data;

    public class TestContentReturnedFromLucene : IHttpHandler
    {
        private Database db;

        public void ProcessRequest(HttpContext context)
        {
            this.db = Sitecore.Configuration.Factory.GetDatabase("master");
            var response = context.Response;

            var ret = new Hashtable();

            ret["master_content_home"] = CountResultsFromPath("/sitecore/content/home", "sitecore_master_index");
            ret["master_images_news"] = CountResultsFromPath("/sitecore/media library/Images/News", "sitecore_master_index");
            ret["master_ucommerce_products"] = CountResultsFromPath("/sitecore/uCommerce/Products", "sitecore_master_index");
            ret["web_content_home"] = CountResultsFromPath("/sitecore/content/home", "sitecore_web_index");
            ret["web_images_news"] = CountResultsFromPath("/sitecore/media library/Images/News", "sitecore_web_index");
            ret["web_ucommerce_products"] = CountResultsFromPath("/sitecore/uCommerce/Products", "sitecore_web_index");

            response.ClearHeaders();
            response.ContentType = "application/json";
            response.Write(Newtonsoft.Json.JsonConvert.SerializeObject(ret));
            response.End();
        }

        private int CountResultsFromPath(string path, string index)
        {
            var item = this.db.GetItem(path);
            if (item == null) return -1;

            return CountResultsFromParentID(item.ID, index);
        }

        private int CountResultsFromParentID(ID parentID, string index)
        {
            using (var searchContext = ContentSearchManager.GetIndex(index).CreateSearchContext())
            {
                return searchContext.GetQueryable<SearchResultItem>().Count(item => item.Paths.Contains(parentID) && item.ItemId != parentID);
            }
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}