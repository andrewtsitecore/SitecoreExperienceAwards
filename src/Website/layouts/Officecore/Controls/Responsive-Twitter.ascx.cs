namespace Officecore.Website.layouts.Officecore.Controls
{
    using System;

    using global::Officecore.Website.code;
    using global::Officecore.Website.code.Controls;

    public partial class Responsive_Twitter : DatasourceControl
    {
        protected string DataId;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (this.Item == null)
            {
                PageEditorError = "No data source selected";
                return;
            }

            if (!MyContext.IsOnline)
            {
                PageEditorError = "Must have internet connectivity";
                return;
            }

            Header.Item = this.Item;

            // Take the Data ID of the widget and pass it here. To get this ID you need to goto https://twitter.com/settings/widgets
            DataId = this.Item["data-widget-id"];
            
            DataBind();
        }
    }
}