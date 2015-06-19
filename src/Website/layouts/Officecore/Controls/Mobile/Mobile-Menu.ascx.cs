namespace Officecore.Website.layouts.Officecore.Controls.Mobile
{
    using System;
    using System.Linq;
    using System.Web.UI;

    using global::Officecore.Website.code.Constants;
    using global::Officecore.Website.code.DataRepositories;

    public partial class Mobile_Menu : UserControl
    {
        private readonly ItemRepositoryBase menus = new ItemRepositoryBase();

        protected void Page_Load(object sender, EventArgs e)
        {
            MenuRepeater.DataSource = this.menus.GetMainMenu(DataRepositoryConstants.MENUMOBILE).ToList();
            MenuRepeater.DataBind();
        }
    }
}