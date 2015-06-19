namespace Officecore.Website.layouts.Officecore.Sublayouts.Virtual
{
    using System;
    using System.Web.UI;

    using global::Officecore.Website.code.Helpers;
    using global::Officecore.Website.code.Service;

    using Sitecore.Data;
    using Sitecore.Text;
    using Sitecore.Web;

    public partial class LoggedIn : UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (string.Equals(this.Request.QueryString["oc_loginError"], "2"))
            {
                this.litAccessErrorTitle.Text = TranslationHelper.Translate("SocialLogin/PermissionDeniedTitle");
                this.litAccessErrorBody.Text = TranslationHelper.Translate("SocialLogin/PermissionDeniedBody");
                pnlAccessError.Visible = true;
            }

            if (Request.QueryString["authResult"] == "success")
            {
                ID socialMediaLoginGoal;

                var properties = WebUtil.ParseUrlParameters(Attributes["sc_parameters"]);
                if (Sitecore.Data.ID.TryParse(properties["SocialMediaLoginGoal"], out socialMediaLoginGoal))
                {
                    AnalyticsHelper.TriggerGoal(socialMediaLoginGoal);
                }

                new CustomerService().FixAutomationStates();

                var returnUrl = WebUtil.GetQueryString("returnUrl", string.Empty);
                if (string.IsNullOrWhiteSpace(returnUrl))
                {
                    var urlString = new UrlString(Request.RawUrl);
                    urlString.Remove("authResult");
                    Response.Redirect(urlString.ToString());
                }
                else
                {
                    Response.Redirect(returnUrl);
                }
            }
        }
    }
}