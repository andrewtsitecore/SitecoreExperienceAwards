namespace Officecore.Website.layouts.Officecore.Controls
{
    using System;
    using System.Web;
    using System.Web.UI;

    using global::Officecore.Website.code;

    public partial class Notification : UserControl
    {
        protected string NotificationType { get; set; }

        protected string NotificationTitle { get; set; }

        protected string NotificationMessage { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (MySession.Notification == null)
            {
                Visible = false;
                return;
            }

            NotificationType = MySession.Notification.NotificationType.ToString();
            NotificationTitle = HttpUtility.JavaScriptStringEncode(MySession.Notification.Title);
            NotificationMessage = HttpUtility.JavaScriptStringEncode(MySession.Notification.Message);
            MySession.Notification = null;

            DataBind();
        }
    }
}