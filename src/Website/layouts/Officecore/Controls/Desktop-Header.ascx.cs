namespace Officecore.Website.layouts.Officecore.Controls
{
    using System;

    using global::Officecore.Website.code;
    using global::Officecore.Website.code.Controls;
    using global::Officecore.Website.code.Service;

    public partial class Desktop_Header : DatasourceControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Logo.Item = MyContext.SiteRoot;
        }
    }
}