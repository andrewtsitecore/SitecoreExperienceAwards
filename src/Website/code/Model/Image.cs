namespace Officecore.Website.code.Model
{
    using System.Web.UI;
    using System.Web.UI.WebControls;

    using Sitecore.Data.Items;
    using Sitecore.Resources.Media;

    public class Image : WebControl
    {
        private readonly MediaUrlOptions _mediaUrlOptions = new MediaUrlOptions();

        public Image() : base(HtmlTextWriterTag.Img)
        {
        }

        public MediaItem MediaItem { get; set; }

        public int MaxHeight
        {
            get { return _mediaUrlOptions.MaxHeight; }
            set { _mediaUrlOptions.MaxHeight = value; }
        }

        public int MaxWidth
        {
            get { return _mediaUrlOptions.MaxWidth; }
            set { _mediaUrlOptions.MaxWidth = value; }
        }

        protected override void Render(HtmlTextWriter writer)
        {
            if (MediaItem == null)
            {
                return;
            }

            base.Render(writer);
        }

        protected override void AddAttributesToRender(HtmlTextWriter writer)
        {
            writer.AddAttribute(HtmlTextWriterAttribute.Src, MediaManager.GetMediaUrl(MediaItem, _mediaUrlOptions));
            writer.AddAttribute(HtmlTextWriterAttribute.Alt, MediaItem.Alt);

            base.AddAttributesToRender(writer);
        }
    }
}