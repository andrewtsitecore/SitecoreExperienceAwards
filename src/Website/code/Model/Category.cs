namespace Officecore.Website.code.Model
{
    using System;

    using Sitecore.Data.Items;
    using Sitecore.Links;

    public class Category
    {
        public String Url { get; set; }
        public String Name { get; set; }
        public Item Item { get; set; }

        public Category(Item category)
        {
            Name = category.DisplayName;
            Url = LinkManager.GetItemUrl(category);
            Item = category;
        }
    }
}