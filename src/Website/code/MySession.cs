namespace Officecore.Website.code
{
    using System.Web;
    using System.Web.SessionState;

    using Officecore.Website.code.Model;

    public class MySession
    {
        private static HttpSessionState S
        {
            get { return HttpContext.Current.Session; }
        }

        const string NotificationKey = "oc_Notification";

        public static Notification Notification
        {
            get
            {
                return S[NotificationKey] as Notification;
            }

            set
            {
                S[NotificationKey] = value;
            }
        }
    }
}