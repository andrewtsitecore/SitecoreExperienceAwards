namespace Officecore.Website.layouts
{
    using System;
    using System.Web.UI;

    using Sitecore.ContentSearch;
    using Sitecore.Diagnostics;
    using Sitecore.Security.Accounts;

    public partial class RebuildSearchIndexes : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var index = Request["index"];
            Assert.IsNotNullOrEmpty(index, "Please supply index");

            User user = Sitecore.Security.Accounts.User.FromName(@"sitecore\admin", false);
            using (new UserSwitcher(user))
            {
                IndexRebuild(index);
            }

            Response.Write("Finished RebuildSearchIndexes: " + index + "\n");
            Response.End();
        }

        private void IndexRebuild(String indexName)
        {
            Log.Info("CI: RebuildSearchIndexes started: " + indexName, this);
            ISearchIndex index = ContentSearchManager.GetIndex(indexName);
            index.Rebuild();
            Log.Info("CI: RebuildSearchIndexes finished: " + indexName, this);
        }
    }
}