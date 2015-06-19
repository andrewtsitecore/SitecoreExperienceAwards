namespace Officecore.Website.layouts
{
    using System;
    using System.Web.UI;

    using Sitecore.Analytics;

    public partial class Profiles : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Tracker.Current.CurrentPage.Cancel();
        }
    }
}