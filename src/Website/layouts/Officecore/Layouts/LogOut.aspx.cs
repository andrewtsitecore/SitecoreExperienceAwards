namespace Officecore.Website.layouts.Officecore.Layouts
{
    using System;
    using System.Web.UI;

    using Sitecore.Security.Authentication;
    using Sitecore.Web;

    public partial class LogOut : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            AuthenticationManager.Logout();
            WebUtil.Redirect("/");
        }
    }
}