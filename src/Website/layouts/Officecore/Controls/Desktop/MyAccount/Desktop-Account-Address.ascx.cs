namespace Officecore.Website.layouts.Officecore.Controls.Desktop.MyAccount
{
    using System;
    using System.Web.UI;

    using Sitecore.Security.Accounts;

    public partial class Desktop_Account_Address : UserControl
    {
        private void Page_Load(object sender, EventArgs e)
        {
            User user = Sitecore.Context.User;
            house.Text = user.Profile.GetCustomProperty("BilHouse");
            street.Text = user.Profile.GetCustomProperty("BilStreet");
            city.Text = user.Profile.GetCustomProperty("BilCity");
            county.Text = user.Profile.GetCustomProperty("BilCounty");
            country.Text = user.Profile.GetCustomProperty("BilCountry");
            postcode.Text = user.Profile.GetCustomProperty("BilPostcode");
        }
    }
}