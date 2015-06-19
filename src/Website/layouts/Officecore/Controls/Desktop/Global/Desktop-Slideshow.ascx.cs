namespace Officecore.Website.layouts.Officecore.Controls.Desktop.Global
{
    using System;

    using global::Officecore.Website.code.Constants;
    using global::Officecore.Website.code.Controls;

    using Sitecore;
    using Sitecore.Data.Items;

    public partial class Desktop_Slideshow : DatasourceControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SlideRepeater.DataSource = this.Item.Children;
            IndicatorRepeater.DataSource = this.Item.Children;

            if (Sitecore.Context.PageMode.IsPageEditorEditing)
            {
                hiddenPageEdit.Value = "true";
            }

            hiddenInterval.Value = this.Item[FieldConstants.Slideshow.IntervalId] == "0" ? "false" : this.Item[FieldConstants.Slideshow.IntervalId];
            hiddenPause.Value = MainUtil.GetBool(this.Item[FieldConstants.Slideshow.PauseId], false) ? "hover" : "onclick";
            hiddenWrap.Value = MainUtil.GetBool(this.Item[FieldConstants.Slideshow.WrapId], false).ToString().ToLowerInvariant();

            DataBind();
        }

        protected string GetUrl(Item item)
        {
            return item[FieldConstants.Slideshow.Url];
        }
    }
}