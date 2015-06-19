namespace Officecore.Website.code.Service
{
    using System;
    using System.Collections.Generic;
    using System.Web.Security;
    using Sitecore;
    using Sitecore.Security.Authentication;
    using Sitecore.Web;
    using Role = Sitecore.Security.Accounts.Role;
    using User = Sitecore.Security.Accounts.User;

    public class CustomerService
    {
        public bool Logon(string username, string password)
        {
            var userName = "extranet\\" + username.ToLower();
            return AuthenticationManager.Login(userName, password);
        }

        public void Logout()
        {
            AuthenticationManager.Logout();
            WebUtil.Redirect("/");
        }

        public User CreateUser(string username, string password, string firstname, string lastname, string email)
        {
            var userName = Context.Domain.Name + "\\" + username.ToLower();

            var user = User.Create(userName, password);
            user.Roles.Add(Role.FromName("extranet\\Customer"));
            //user.Profile.FullName = string.Format("{0} {1}", firstname, lastname);
            user.Profile.Email = email;
            user.Profile.Save();
            return user;
        }

        public void DeleteUser(string username, bool deleteAllRelatedData)
        {
            var user = User.FromName(username, false);
            if (user != null)
            {
                user.Delete();
            }
        }

        public void UpdateCustomer(string title = null, string firstname = null, string lastname = null, string phone = null, string mobile = null, string email = null, string house = null, string street = null, string city = null, string county = null, string country = null, string postcode = null)
        {
            if (Context.User == null || Context.User.Profile == null) return;
            var profile = Context.User.Profile;

            // TODO: Check new email doesn't exist elsewhere
            if (string.IsNullOrEmpty(profile.Email) && email != null)
            {
                profile.Email = email;
            }

            if (title != null)
            {
                profile.SetCustomProperty("Title", title);
            }

            if (firstname != null)
            {
                profile.SetCustomProperty("FirstName", firstname);
            }

            if (lastname != null)
            {
                profile.SetCustomProperty("LastName", lastname);
            }

            if (firstname != null && lastname != null)
            {
                profile.FullName = string.Format("{0} {1}", firstname, lastname);
            }

            if (phone != null)
            {
                profile.SetCustomProperty("Phone", phone);
            }

            if (mobile != null)
            {
                profile.SetCustomProperty("Mobile", mobile);
            }

            if (house != null)
            {
                profile.SetCustomProperty("House", house);
            }

            if (street != null)
            {
                profile.SetCustomProperty("Street", street);
            }

            if (city != null)
            {
                profile.SetCustomProperty("City", city);
            }

            if (county != null)
            {
                profile.SetCustomProperty("County", county);
            }

            if (postcode != null)
            {
                profile.SetCustomProperty("Postcode", postcode);
            }

            if (country != null)
            {
                profile.SetCustomProperty("Country", country);
            }

            profile.Save();
        }

        public bool UserNameExists(string username)
        {
            return User.Exists(username);
        }

        // TODO: Clean this up
        public bool UserEmailExists(string email)
        {
            return this.GetUserByEmailAddress(email) != null;
        }

        // TODO: Clean this up
        public User GetUserByEmailAddress(string email)
        {
            if (email == null)
            {
                throw new ArgumentNullException("email");
            }

            var username = Membership.GetUserNameByEmail(email);
            if (!string.IsNullOrEmpty(username))
            {
                return User.FromName(username, true);
            }

            username = Context.Domain + "\\" + this.EscapeEmailToUsername(email);
            if (User.Exists(username))
            {
                return User.FromName(username, true);    
            }

            return null;
        }

        protected bool UpdatePassword(string username, string newpassword, string oldpassword)
        {
            //if the old password and the newpassword string differ then change the password.
            if (oldpassword.Equals(newpassword)) return false;

            return Membership.Provider.ChangePassword(username, newpassword, oldpassword);
        }

        public void ResetPassword(string username)
        {
            //TODO: This should trigger an automated email taking the customer to a page to setup a new password
        }

        public void FixAutomationStates()
        {
            // TODO: Check if this is still required
            //if (!Sitecore.Context.IsLoggedIn)
            //{
            //    return;
            //}

            //if (!Tracker.IsActive)
            //{
            //    Tracker.StartTracking();
            //}

            //Tracker.Visitor.ExternalUser = Sitecore.Context.GetUserName();
            //Tracker.Visitor.Submit();

            //const string Query = "UPDATE {0}AutomationStates{1} SET {0}UserName{1}={2}UserName{3} WHERE {0}VisitorID{1}={2}VisitorID{3}";
            //var parameters = new object[] { "UserName", Tracker.Visitor.ExternalUser, "VisitorID", Tracker.Current.Contact.ContactId };
            //Sitecore.Analytics.Reports.Data.DataAccess.DataAdapters.DataAdapterManager.Sql.Execute(Query, parameters);
        }

        public string EscapeEmailToUsername(string email)
        {
            if (email == null)
            {
                throw new ArgumentNullException("email");
            }

            return email.Replace("@", "_").Replace(".", "_").Replace("-", "_").Replace("+", "_");
        }
    }
}