namespace Officecore.Website.layouts.scripts
{
    using System;
    using System.Web.UI;

    using Sitecore.Analytics;
    using Sitecore.Analytics.Tracking;
    using Sitecore.Configuration;

    public partial class WriteToXdb : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var contactManager = (ContactManager)Factory.CreateObject("tracking/contactManager", true);
            contactManager.SaveAndReleaseContact(Tracker.Current.Contact);
        }
    }
}