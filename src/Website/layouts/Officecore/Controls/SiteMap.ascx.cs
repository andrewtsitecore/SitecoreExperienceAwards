namespace Officecore.Website.layouts.Officecore.Controls
{
    using System;
    using System.Collections.Generic;
    using System.Drawing;
    using System.Linq;
    using System.Text;
    using System.Web.UI;

    using global::Officecore.Website.code.Constants;
    using global::Officecore.Website.code.DataRepositories;
    using global::Officecore.Website.code.Extensions;

    using Sitecore.Buckets.Extensions;
    using Sitecore.Data;
    using Sitecore.Data.IDTables;
    using Sitecore.Data.Items;
    using Sitecore.Links;

    public partial class SiteMap : UserControl
    {
        public String Tree;
        private readonly ItemRepositoryBase _menus = new ItemRepositoryBase();

        public int ThumbWidth { get; set; }
        public int ThumbHeight { get; set; }
        public int BrowserWidth { get; set; }
        public int BrowserHeight { get; set; }

        public string Url { get; set; }
        public Bitmap ThumbImage { get; set; }

        private static readonly ID uCommerceRootID = Sitecore.Data.ID.Parse("{B978AAEF-C01C-4AE4-A198-5400713F04D8}");

        protected void Page_Load(object sender, EventArgs e)
        {
            List<Item> items = _menus.GetItems(DataRepositoryConstants.SITE_SECTION).Where(x => x.HasLayout()).ToList();
            Tree = GenerateUL(items, null, 1);
            DataBind();
        }

        private string GenerateUL(IEnumerable<Item> items, bool? isUcommerce, int depth)
        {
            var sb = new StringBuilder();
            sb.AppendLine("<ul>");
            foreach (var item in items)
            {
                String name = item.DisplayName;
                if (name.Length > 25)
                {
                    name = name.Substring(0, 25);
                }

                if (depth == 1)
                {
                    isUcommerce = item.ID == uCommerceRootID;
                }

                string url;
                url = LinkManager.GetItemUrl(item);

                var children = item.Children.Where(x => !x.IsABucketFolder() && x.HasLayout()).ToList();
                if (children.Count > 0)
                {
                    sb.AppendLine("<li><div><span style=\"font-size: 1.2em;\" class=\"glyphicon glyphicon-minus\"></span><div style=\"border:none\">" + name + "</div><a rel=\"#tip-content\" href=\"" + url + "\"><span style=\"font-size: 1.2em;\" class=\"glyphicon glyphicon-play-circle\"><span></a></div>");
                    sb.Append(GenerateUL(children, isUcommerce, depth + 1));
                    sb.AppendLine("</li>");
                }
                else
                {
                    sb.AppendLine("<li><div><span style=\"font-size: 1.2em;\" class=\"glyphicon glyphicon-record\"></span><div style=\"border:none\">" + name + "</div><a rel=\"#tip-content\" href=\"" + url + "\"><span style=\"font-size: 1.2em;\" class=\"glyphicon glyphicon-play-circle\"><span></a></div></li>");
                }
            }

            sb.AppendLine("</ul>");
            return sb.ToString();
        }
    }
}