namespace Officecore.Website.layouts.Officecore.Controls
{
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Web.UI;

    using global::Officecore.Website.code;
    using global::Officecore.Website.code.Constants;
    using global::Officecore.Website.code.Service;

    using Sitecore.Data.Items;

    public partial class Desktop_SideMenu : UserControl
    {
        private readonly SiteService siteService = new SiteService();

        protected void Page_Load(object sender, EventArgs e)
        {
            Item currentItem = Sitecore.Context.Item;
            Item[] items = null;
            List<Item> itemList = new List<Item>();
            if (siteService.GetCurrentSection() == "news")
            {
                Item rootItem = currentItem.Axes.SelectSingleItem("ancestor-or-self::*[@@name='News']");
                items = rootItem.Axes.SelectItems(DataRepositoryConstants.NEWS_QUERY);
                itemList = items.OfType<Item>().ToList();
                itemList.Sort(new DateComparer());
            }
            else
            {
                if (Sitecore.Context.Item.TemplateID.ToString() == "{B2477E15-F54E-4DA1-B09D-825FF4D13F1D}")
                {
                    itemList = Sitecore.Context.Item.Children.ToList();
                }
                else
                {
                    Item parent = Sitecore.Context.Item.Parent;
                    while (parent != null && parent.TemplateID.ToString() != "{B2477E15-F54E-4DA1-B09D-825FF4D13F1D}")
                    {
                        parent = parent.Parent;
                    }
                    itemList = parent.Children.ToList();
                }
            }

            News.DataSource = itemList;
            News.DataBind();
        }

        public List<Item> GetChildren(Item item)
        {
            return item.GetChildren().ToList();
        }

        public string GetText(Item item)
        {
            if (siteService.GetCurrentSection() == "contact")
            {
                return item["Name"];
            }

            return item["Title"];
        }
    }
}