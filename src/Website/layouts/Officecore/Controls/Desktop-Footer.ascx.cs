namespace Officecore.Website.layouts.Officecore.Controls
{
    using System;

    using global::Officecore.Website.code.Controls;
    using global::Officecore.Website.code.DataRepositories;

    public partial class Desktop_Footer : DatasourceControl
    {
        private readonly ItemRepositoryBase menus = new ItemRepositoryBase();

        protected void Page_Load(object sender, EventArgs e)
        {
            //var menu = (ReferenceField)MyContext.SiteRoot.Fields["MenuSourceFooter"];
            //if (menu == null || menu.TargetItem == null)
            //{
                //PageEditorError = "Datasource not set";
                //return;
            //}

            //FooterRepeater.DataSource = menus.GetMainMenu(menu.TargetItem).ToList();
            //FooterRepeater.DataBind();
        }
    }
}