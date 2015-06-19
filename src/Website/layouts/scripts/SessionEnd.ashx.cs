﻿namespace Officecore.Website.layouts.scripts
{
    using System.Web;
    using System.Web.SessionState;

    public class SessionEnd : IHttpHandler, IRequiresSessionState
    {
        public void ProcessRequest(HttpContext context)
        {
            context.Session.Abandon();
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