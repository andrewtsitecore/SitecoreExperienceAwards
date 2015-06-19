namespace Officecore.Website.layouts.Officecore.Controls.Desktop.Global
{
    using System;

    using global::Officecore.Website.code.Controls;

    public partial class Desktop_SidebarText : DatasourceControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            title.Item = this.Item;
        }
    }
}