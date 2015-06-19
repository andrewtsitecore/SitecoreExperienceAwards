using System.Web;

namespace Officecore.Website.layouts.Starter_Kit.Layouts
{
    using System;
    using System.Web.UI;

    using global::Officecore.Website.code;
    using global::Officecore.Website.layouts.Officecore.Controls;

    using Sitecore.Data.Fields;

    public partial class Browser_Fixed : Page
    {
        //public string pageCss { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            
            //This gets the CSS file link for the Theme CSS item.
            var root = MyContext.SiteRoot;

            var menuHeader = (ReferenceField)root.Fields["MenuSourceHeader"];
            if (menuHeader != null && menuHeader.TargetItem != null)
            {
                var cu = (Desktop_Menu)MenuDesktop.GetUserControl();
                cu.MenuRoot = menuHeader.TargetItem;
            }
        }
    }
}