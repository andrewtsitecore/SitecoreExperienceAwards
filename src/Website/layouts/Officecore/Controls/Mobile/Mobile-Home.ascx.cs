namespace Officecore.Website.layouts.Officecore.Controls.Mobile
{
    using System;

    using global::Officecore.Website.code.Controls;

    public partial class Mobile_Home : DatasourceControl
    {
        public string BannerImgUrl { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            BannerHeader.Item = this.Item;
            BannerSlogan.Item = this.Item;
            BannerLink.Item = this.Item;
            BannerImgUrl = GetImageURL(this.Item, "Banner Image");
        } 
    }
}