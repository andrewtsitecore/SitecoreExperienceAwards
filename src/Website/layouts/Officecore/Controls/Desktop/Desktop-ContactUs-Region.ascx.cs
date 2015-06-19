namespace Officecore.Website.layouts.Officecore.Controls.Desktop
{
    using System;

    using global::Officecore.Website.code.Controls;

    public partial class Desktop_ContactUs_Region : ContactUsPage
    {
        public override string LatLonList
        {
            get
            {
                return repo.GetLatLonListRegion(Sitecore.Context.Item);
            }
        }

        private void Page_Load(object sender, EventArgs e)
        {
        }
    }
}