namespace Officecore.Website.layouts.Officecore.Controls
{
    using System;
    using System.Web.Security;
    using System.Web.UI;

    using global::Officecore.Website.code.Helpers;
    using global::Officecore.Website.code.Service;

    using Sitecore.Data;
    using Sitecore.Security.Accounts;
    using Sitecore.Security.Authentication;
    using Sitecore.Web;

    public partial class SocialLogin : UserControl
    {
        ID loginGoal, registerGoal;

        private void Page_Load(object sender, EventArgs e)
        {
            var properties = WebUtil.ParseUrlParameters(Attributes["sc_parameters"]);
            Sitecore.Data.ID.TryParse(properties["LoginGoal"], out loginGoal);
            Sitecore.Data.ID.TryParse(properties["RegisterGoal"], out registerGoal);

            this.DoLoginMessage();

            if (Sitecore.Context.IsLoggedIn)
            {
                pnlForms.Visible = !Sitecore.Context.PageMode.IsNormal;
            }
            else
            {
                pnlForms.Visible = true;
            }
            
        }

        private void DoLoginMessage()
        {
            pnlAccessError.Visible = false;

            if (!this.IsPostBack)
            {
                if (string.Equals(this.Request.QueryString["oc_loginError"], "1"))
                {
                    this.litAccessErrorTitle.Text = TranslationHelper.Translate("SocialLogin/AccessDeniedTitle");
                    this.litAccessErrorBody.Text = TranslationHelper.Translate("SocialLogin/AccessDeniedBody");
                    pnlAccessError.Visible = true;
                }
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (this.txtUsername.Text == string.Empty || this.txtPassword.Text == string.Empty)
            {
                this.pnlLoginFailed.Visible = true;
                this.litLoginFailed.Text = "Fill All Fields";
                return;
            }

            if (!DoLogin(this.txtUsername.Text.Trim(), this.txtPassword.Text.Trim()))
            {
                this.litLoginFailed.Text = "Social Login Failed";
                this.pnlLoginFailed.Visible = true;
                return;
            }

            AnalyticsHelper.TriggerGoal(loginGoal);
            new CustomerService().FixAutomationStates();

            var returnUrl = WebUtil.GetQueryString("returnUrl", string.Empty);
            if (string.IsNullOrWhiteSpace(returnUrl))
            {
                WebUtil.ReloadPage();
            }
            else
            {
                Response.Redirect(returnUrl);
            }
        }

        private static bool DoLogin(string username, string password)
        {
            username = string.Format(@"{0}\{1}", Sitecore.Context.Domain.Name, username);
            return AuthenticationManager.Login(username, password);
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrWhiteSpace(this.txtRegisterUsername.Text)
                || string.IsNullOrWhiteSpace(this.txtRegisterPassword.Text)
                || string.IsNullOrWhiteSpace(this.txtRegisterEmail.Text))
            {
                this.pnlRegisterFailed.Visible = true;
                this.litRegisterFailed.Text = "Fill All Fields";
                return;
            }

            var username = string.Format(@"{0}\{1}", Sitecore.Context.Domain.Name, this.txtRegisterUsername.Text.Trim());
            var password = this.txtRegisterPassword.Text.Trim();
            var email = this.txtRegisterEmail.Text.Trim();

            if (User.Exists(username))
            {
                this.pnlRegisterFailed.Visible = true;
                this.litRegisterFailed.Text = "Username Already Exists";
                return;
            }

            if (Membership.FindUsersByEmail(email).Count > 0)
            {
                this.pnlRegisterFailed.Visible = true;
                this.litRegisterFailed.Text = "Email Already Exists";
                return;
            }

            var user = User.Create(username, password);
            user.Profile.Email = email;
            user.Profile.Save();

            AnalyticsHelper.TriggerGoal(registerGoal);
            new CustomerService().FixAutomationStates();

            AuthenticationManager.Login(user);
            
            var returnUrl = WebUtil.GetQueryString("returnUrl", string.Empty);
            if (string.IsNullOrWhiteSpace(returnUrl))
            {
                WebUtil.ReloadPage();
            }
            else
            {
                Response.Redirect(returnUrl);
            }
        }
    }
}