namespace Officecore.Website.layouts
{
    using System;
    using System.Web.UI;

    using Sitecore;
    using Sitecore.Configuration;
    using Sitecore.Data;
    using Sitecore.Diagnostics;
    using Sitecore.Security.Accounts;

    public partial class RebuildLinkDatabases : Page
    {
        private readonly Database webDb = Factory.GetDatabase("web");
        private readonly Database masterDb = Factory.GetDatabase("master");
        private readonly Database coreDb = Factory.GetDatabase("core");

        protected void Page_Load(object sender, EventArgs e)
        {
            User user = Sitecore.Security.Accounts.User.FromName(@"sitecore\admin", false);
            using (new UserSwitcher(user))
            {
                Log.Info("CI: Rebuilding Core Link Database", this);
                Globals.LinkDatabase.Rebuild(coreDb);

                Log.Info("CI: Rebuilding Master Link Database", this);
                Globals.LinkDatabase.Rebuild(masterDb);

                Log.Info("CI: Rebuilding Web Link Database", this);
                Globals.LinkDatabase.Rebuild(webDb);
            }

            Response.End();
        }
    }
}