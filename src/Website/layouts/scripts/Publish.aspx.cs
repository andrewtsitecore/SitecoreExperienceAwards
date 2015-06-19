namespace Officecore.Website.layouts
{
    using System;
    using System.Web.UI;

    using Sitecore.Configuration;
    using Sitecore.Data;
    using Sitecore.Diagnostics;
    using Sitecore.Globalization;
    using Sitecore.Publishing;
    using Sitecore.Security.Accounts;

    public partial class Publish : Page
    {
        private readonly Database webDb = Factory.GetDatabase("web");
        private readonly Database masterDb = Factory.GetDatabase("master");

        protected void Page_Load(object sender, EventArgs e)
        {
            var root = Request["root"];
            Assert.IsNotNullOrEmpty(root, "Please supply root item path");

            User user = Sitecore.Security.Accounts.User.FromName(@"sitecore\admin", false);
            using (new UserSwitcher(user))
            {
                Log.Info("CI: Publishing: " + root, this);
                Publisher(root);
            }

            Response.Write("Publish done: " + root);
            Response.End();
        }

        private void Publisher(String root)
        {
            Log.Info("CI: Smart publish started: " + root, this);

            try
            {
                foreach (Language language in masterDb.Languages)
                {
                    //loops on the languages and do a full republish on the whole sitecore content tree
                    var options = new PublishOptions(masterDb, webDb, PublishMode.Smart, language, DateTime.Now) { RootItem = masterDb.Items[root], RepublishAll = false, Deep = true };
                    var myPublisher = new Publisher(options);
                    myPublisher.Publish();
                }
            }
            catch (Exception ex)
            {
                Log.Error("Could not publish root: " + root + " in the master database to the web", ex);
                throw;
            }

            Log.Info("CI: Smart publish ended: " + root, this);
        }
    }
}