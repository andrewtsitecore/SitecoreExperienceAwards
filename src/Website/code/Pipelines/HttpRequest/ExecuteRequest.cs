// http://www.sitecore.net/unitedkingdom/Community/Technical-Blogs/John-West-Sitecore-Blog/Posts/2013/04/Handling-Errors-in-the-Sitecore-ASPNET-CMS.aspx
namespace Officecore.Website.code.Pipelines.HttpRequest
{
    using System.Web;

    using Sitecore;
    using Sitecore.Diagnostics;
    using Sitecore.Web;

    public class ExecuteRequest : Sitecore.Pipelines.HttpRequest.ExecuteRequest
    {
        protected override void RedirectOnNoAccess(string url)
        {
            Log.Warn(this + " : No access for " + HttpContext.Current.Request.RawUrl + " (" + Context.User.Name + ")", this);
            WebUtil.Redirect("/?oc_loginError=1");
        }

        protected override void RedirectOnSiteAccessDenied(string url)
        {
            Log.Warn(this + " : No site access for " + HttpContext.Current.Request.RawUrl + " (" + Context.User.Name + ")", this);
            WebUtil.Redirect("/?oc_loginError=2");
        }
    }
}