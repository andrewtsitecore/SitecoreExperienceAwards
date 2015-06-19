namespace Officecore.Website.code.Model
{
    public class Notification
    {
        public NotificationType NotificationType { get; set; }

        public string Title { get; set; }

        public string Message { get; set; }

        public Notification(NotificationType notificationType, string title, string message)
        {
            this.NotificationType = notificationType;
            this.Title = title;
            this.Message = message;
        }
    }
}