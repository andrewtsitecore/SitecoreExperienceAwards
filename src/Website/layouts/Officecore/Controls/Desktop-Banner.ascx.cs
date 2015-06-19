namespace Officecore.Website.layouts.Officecore.Controls
{
    using System;

    using global::Officecore.Website.code.Controls;

    public partial class Desktop_Banner : DatasourceControl
    {
        public string BannerImgUrl { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            //BannerHeader.Item = this.Item;
            //BannerSlogan.Item = this.Item;
            //BannerLink.Item = this.Item;
            if (!Sitecore.Context.PageMode.IsPageEditorEditing)
            {
                BannerImgUrl = GetImageURL(this.Item, "Banner Image");
            }
            else
            {
                BannerImage.Item = this.Item;
            }
            DataBind();
        }
    }
}