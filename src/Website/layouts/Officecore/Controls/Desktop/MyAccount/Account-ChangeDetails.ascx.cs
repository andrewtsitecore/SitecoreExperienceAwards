using Officecore.Website.code.Helpers;

namespace Officecore.Website.layouts.Officecore.Controls.Desktop.MyAccount
{
    using System;
    using System.Linq;
    using System.Web.UI;

    using global::Officecore.Website.code.Service;

    using Sitecore.Buckets.Extensions;
    using Sitecore.Diagnostics;
    using Sitecore.Links;

    using User = Sitecore.Security.Accounts.User;

    public partial class Address_ChangeDetails : UserControl
    {
        User user = Sitecore.Context.User;
        private bool wasProfileEmpty;
        private string email = User.Current.Profile.Email;

        private void Page_Load(object sender, EventArgs e)
        {
            Assert.IsTrue(Sitecore.Context.IsLoggedIn, "Must be logged in");
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            
            CustomerService _cs = new CustomerService();
            if (_cs.UserNameExists(Sitecore.Context.User.Name))
            {
                if (txtEmail.Text != Sitecore.Context.User.Profile.Email)
                {
                    //then its changed, so next we check if it doesnt exists in the database
                    email = !_cs.UserEmailExists(txtEmail.Text) ? txtEmail.Text : string.Empty;
                }

                //therefore its changed from the original and not being currently used in the database, so set it.
                //ContactHelper.UpdateContact( 
                //    ddlTitle.SelectedValue, 
                //    txtFName.Text, 
                //    txtLName.Text, 
                //    txtPhone.Text, 
                //    txtMPhone.Text, 
                //    email, 
                //    txtHouseName.Text, 
                //    txtStreetName.Text, 
                //    txtCity.Text, 
                //    txtCounty.Text, 
                //    ddlCountry.SelectedItem.Text, 
                //    txtPostcode.Text);

                var redirectId = wasProfileEmpty ? "{BE45BB90-8BD7-47A1-8C89-4796A17CAB75}" : "{9B0EFB29-61C2-4771-9E01-1A8471D695A6}";

                Response.Redirect(LinkManager.GetItemUrl(Sitecore.Context.Database.GetItem(redirectId)));
            }
        }
    }
}