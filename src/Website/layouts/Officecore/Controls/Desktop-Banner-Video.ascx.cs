namespace Officecore.Website.layouts.Officecore.Controls
{
    using System;

    using global::Officecore.Website.code.Controls;

    using Sitecore.Data.Fields;
    using Sitecore.Resources.Media;

    public partial class Desktop_Banner_Video : DatasourceControl
    {
        public string VideoUrl { get; set; }
        public string VideoImg { get; set; }

        protected void Page_Load(object sender, EventArgs e)        
        {
            FileField mediaItem = this.Item.Fields["Video source"];
            VideoUrl = MediaManager.GetMediaUrl(mediaItem.MediaItem);
            VideoImg = GetImageURL(this.Item, "Thumbnail");  
        }
    }
}