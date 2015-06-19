namespace Officecore.Website.layouts.Officecore.Controls
{
    using System.Net;
    using System.Web;
    using System.Web.SessionState;

    using global::Officecore.Website.code.Helpers;

    using Sitecore;
    using Sitecore.Data;
    using Sitecore.Data.Items;
    using Sitecore.Diagnostics;

    public class DownloadFileHandler : IHttpHandler, IRequiresSessionState
    {
        public void ProcessRequest(HttpContext context)
        {
            ID id, goalID;
            if (!ID.TryParse(context.Request.QueryString["id"], out id))
            {
                context.Response.StatusCode = 500;
                context.Response.StatusDescription = "ID missing";
                context.Response.End();
                return;
            }

            if (!ID.TryParse(context.Request.QueryString["goalID"], out goalID))
            {
                context.Response.StatusCode = 500;
                context.Response.StatusDescription = "GoalID missing";
                context.Response.End();
                return;
            }

            var item = (MediaItem)Context.Database.GetItem(id);
            if (item == null)
            {
                context.Response.StatusCode = 500;
                context.Response.StatusDescription = "Item not found";
                context.Response.End();
                return;
            }

            if (!AnalyticsHelper.TriggerGoal(goalID))
            {
                Log.Warn("Goal triggering failed", this);
            }

            var fileName = item.Name + "." + item.Extension;

            context.Response.Clear();
            context.Response.ContentType = item.MimeType;
            context.Response.AppendHeader("Content-Disposition", string.Format("inline;filename=\"{0}\"", fileName));
            context.Response.StatusCode = (int)HttpStatusCode.OK;
            context.Response.BufferOutput = true;
            item.GetMediaStream().CopyTo(context.Response.OutputStream);
            context.Response.Flush();
            context.Response.End();
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}