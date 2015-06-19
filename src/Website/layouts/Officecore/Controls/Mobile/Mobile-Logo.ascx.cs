namespace Officecore.Website.layouts.Officecore.Controls.Mobile
{
    using System;

    using global::Officecore.Website.code.Controls;
    using global::Officecore.Website.code.Service;

    public partial class Mobile_Logo : DatasourceControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Logo.Item = Sitecore.Context.Database.GetItem(Sitecore.Context.Site.ContentStartPath+"/Home");
        }
    }
}