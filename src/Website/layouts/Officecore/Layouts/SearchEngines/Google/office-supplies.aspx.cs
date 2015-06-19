namespace Officecore.Website.layouts.Officecore.Layouts.Google
{
    using System;
    using System.Web.UI;

    using global::Officecore.Website.code.Service;

    public partial class Office_supplies : Page
    {
        public String SITE_URL;
        private SiteService ss = new SiteService();

        protected void Page_Load(object sender, EventArgs e)
        {
            SITE_URL = ss.SetHostAndToggle("true");        
        }
        
    }
}