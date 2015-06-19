namespace Officecore.Website.layouts.Officecore.Controls
{
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Web;
    using System.Web.UI.HtmlControls;
    using System.Web.UI.WebControls;

    using global::Officecore.Website.code.Constants;
    using global::Officecore.Website.code.Controls;
    using global::Officecore.Website.code.DataRepositories;

    using Sitecore.Data.Items;

    public partial class Desktop_Menu : DatasourceControl
    {
        private readonly ItemRepositoryBase _menus = new ItemRepositoryBase();
        private readonly HttpBrowserCapabilities _test = new HttpBrowserCapabilities();

        public Item MenuRoot { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (MenuRoot == null)
            {
                PageEditorError = "MenuRoot not set";
                return;
            }

            var datasource = _menus.GetMenuChildren(MenuRoot, ItemConstants.MenuSection);
            DesktopMenuRepeater.DataSource = datasource;
            DataBind();
        }

        protected IEnumerable<Item> GetCategories(Item item)
        {
            return _menus.GetMenuChildren(item, ItemConstants.MenuCategory).ToList();
        }

        protected IEnumerable<Item> GetItems(Item item)
        {
            return _menus.GetMenuChildren(item, ItemConstants.MenuItem).ToList();
        }

        protected void Repeater_PreRender(object sender, EventArgs e)
        {
            if (((Repeater)sender).Items.Count == 0)
            {
                ((Repeater)sender).Visible = false;
            }
        }

        protected void CategoryMenuRepeater_OnItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            Repeater r = (Repeater)sender;
            if (r.Items.Count > 2)
            {
                HtmlGenericControl div = r.Controls[r.Controls.Count - 1].Controls[0].FindControl("specialoffer") as HtmlGenericControl;
                if (div != null)
                {
                    div.Attributes.Add("style", "visibility:hidden;");
                }
            }
        }


    }
}