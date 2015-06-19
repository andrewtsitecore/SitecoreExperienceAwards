namespace Officecore.Website.layouts.Officecore.Layouts.Bing
{
    using System;
    using System.Web.UI;

    using global::Officecore.Website.code.Service;

    public partial class mortgages : Page
    {
        public String SITE_URL;
        private SiteService ss = new SiteService();

        protected void Page_Load(object sender, EventArgs e)
        {
            SITE_URL = ss.SetHostAndToggle("false");
        }
    }
}