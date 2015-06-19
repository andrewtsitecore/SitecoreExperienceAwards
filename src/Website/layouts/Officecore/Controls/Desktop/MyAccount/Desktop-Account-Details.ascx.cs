namespace Officecore.Website.layouts.Officecore.Controls.Desktop.MyAccount
{
    using System;
    using System.Web.UI;

    using Sitecore.Diagnostics;
    using Sitecore.Links;

    public partial class Desktop_Account_Details : UserControl
    {
        private void Page_Load(object sender, EventArgs e)
        {
            Assert.IsTrue(Sitecore.Context.IsLoggedIn, "Must be logged in");

            var user = Sitecore.Context.User;

            // Force users to have filled in details, otherwise the dashboard looks silly.
            if (string.IsNullOrEmpty(user.Profile.GetCustomProperty("BilFirstName")))
            {
                var changeDetailsPage = Sitecore.Context.Database.GetItem("{7E055174-F794-421A-AA8F-191706A01496}");
                Response.Redirect(LinkManager.GetItemUrl(changeDetailsPage));
            }
            
            title.Text = user.Profile.GetCustomProperty("BilTitle");
            firstname.Text = user.Profile.GetCustomProperty("BilFirstName");
            lastname.Text = user.Profile.GetCustomProperty("BilLastName");
            phone.Text = user.Profile.GetCustomProperty("BilPhone");
            mobile.Text = user.Profile.GetCustomProperty("BilMobile");
            email.Text = user.Profile.Email;
        }
    }
}