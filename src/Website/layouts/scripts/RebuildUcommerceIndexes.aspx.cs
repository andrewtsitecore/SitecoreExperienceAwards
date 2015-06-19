namespace Officecore.Website.layouts
{
    using System;
    using System.Web.UI;

    using Sitecore.Diagnostics;
    using Sitecore.Security.Accounts;

    public partial class RebuildUcommerceIndexes : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            User user = Sitecore.Security.Accounts.User.FromName(@"sitecore\admin", false);
            using (new UserSwitcher(user))
            {
                Log.Info("CI: Ucommerce index rebuild", this);
            }
        }
    }
}