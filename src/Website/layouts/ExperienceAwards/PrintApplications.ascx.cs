namespace Officecore.Website.layouts.ExperienceAwards
{
    using Officecore.Website.code.Constants;
    using System;

    public partial class PrintApplications : System.Web.UI.UserControl
    {

        private readonly ItemRepositoryBase _applications = new ItemRepositoryBase();

        public Item MenuRoot { get; set; }

        private void Page_Load(object sender, EventArgs e)
        {
            var datasource = _applications.GetMenuChildren(MenuRoot, ItemConstants.ApplicationFolder);
            ApplicationRepeater.DataSource = datasource;
            DataBind();
        }
    }
}