namespace Officecore.Website.layouts.Starter_Kit.Sublayouts
{
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Web.UI;
    using System.Web.UI.WebControls;

    using Sitecore.Data;
    using Sitecore.Data.Items;
    using Sitecore.Links;
    using Sitecore.Web.UI.WebControls;

    public partial class Breadcrumb : UserControl
    {
        private static readonly string _siteRootTemplateName = "Site Root";
        private static readonly string _separatorPath = "{01553250-74F2-42F8-ADCB-00FCE55DEA8F}";
        private static readonly string _bucketTemplateID = "{ADB6CA4F-03EF-4F47-B9AC-9CE2BA53FF97}";
        private static readonly string _separatorField = "Text";
        private static readonly string _header = "<div class='row'><div class='col-md-12'><div id='breadcrumb'>";
        private static readonly string _footer = "<div class='clearfix'></div></div></div></div>";

        private List<BreadcrumbItem> _breadcrumbItemList = new List<BreadcrumbItem>();

        private Item _currentItem = Sitecore.Context.Item;

        protected void Page_Load(object sender, EventArgs e)
        {
            this.CreateCrumbs(_currentItem);

            // In case we're going through a node outside of the /sitecore/content/home path (e.g. /sitecore/content/ucommerce) we need to add the home item.
            var homeItem = Sitecore.Context.Database.GetItem(Sitecore.Context.Site.RootPath + Sitecore.Context.Site.StartItem);
            var prodItem = Sitecore.Context.Database.GetItem("{07D9A696-A2FE-4A59-88FB-A57FE386B8AD}");

            if (homeItem != null && !_breadcrumbItemList.Any(x => x.ID == homeItem.ID))
            {
                _breadcrumbItemList.Insert(0, new BreadcrumbItem(ShowTitle(prodItem), LinkManager.GetItemUrl(prodItem), prodItem.ID == _currentItem.ID, prodItem.ID));
                _breadcrumbItemList.Insert(0, new BreadcrumbItem(ShowTitle(homeItem), LinkManager.GetItemUrl(homeItem), homeItem.ID == _currentItem.ID, homeItem.ID));
            }

            Repeater repeater = new Repeater();
            try
            {
                repeater.ID = "Repeater1";
                this.Controls.Add(repeater);
            }
            finally
            {
                repeater.Dispose();
            }
            repeater.ItemTemplate = new CompiledTemplateBuilder(new BuildTemplateMethod(BuildItemTemplate));
            repeater.HeaderTemplate = new CompiledTemplateBuilder(new BuildTemplateMethod(BuildHeaderTemplate));
            repeater.FooterTemplate = new CompiledTemplateBuilder(new BuildTemplateMethod(BuildFooterTemplate));

            repeater.DataSource = _breadcrumbItemList;
            repeater.DataBind();
        }

        // Recursive method that walks up the parent tree to find the
        // site root of the current item.
        private string BuildSeperatorText()
        {
            if (!string.IsNullOrEmpty(Sitecore.Context.Database.GetItem(_separatorPath)[_separatorField]))
            {
                return string.Format("&#160;&#160;{0}&#160;&#160;", Sitecore.Context.Database.GetItem(_separatorPath)[_separatorField]);
            }
            else
            {
                return string.Empty;
            }
        }

        private string BuildHeader()
        {
            return _header;
        }

        private string BuildFooter()
        {
            return _footer;
        }


        // Builds Header template
        protected void BuildHeaderTemplate(Control container)
        {
            LiteralControl l = null;
            try
            {
                l = new LiteralControl(BuildHeader());
                container.Controls.Add(l);
            }
            finally
            {
                l.Dispose();
            }
        }


        // Builds Footer template
        protected void BuildFooterTemplate(Control container)
        {
            LiteralControl l = null;
            try
            {
                l = new LiteralControl(BuildFooter());
                container.Controls.Add(l);
            }
            finally
            {
                l.Dispose();
            }
        }


        // Builds Item template with link
        protected void BuildItemTemplate(Control container)
        {
            HyperLink h = new HyperLink();
            container.Controls.Add(h);
            h.ID = "HyperLink1";
            Literal l = null;
            try
            {
                l = new Literal();
                container.Controls.Add(l);
                l.ID = "Literal1";
                h.DataBinding += new EventHandler(
                       delegate
                       {
                           RepeaterItem item = container as RepeaterItem;
                           var crumb = item.DataItem as BreadcrumbItem;

                           h.Text = crumb.DisplayName;
                           if (!crumb.Active)
                           {
                               h.NavigateUrl = crumb.Url;
                           }
                       }
                 );
            }
            finally
            {
                l.Dispose();
            }
        }
        // Returns Title or Item name
        // site root of the current item.
        public string ShowTitle(Item item)
        {
            if (item != null)
            {
                // Make only the current item editable in Page Editor
                if (item.ID == _currentItem.ID)
                {
                    return string.IsNullOrEmpty(item["Breadcrumb Title"]) ? string.IsNullOrEmpty(item["Menu Title"]) ? string.IsNullOrEmpty(item["Title"]) ? item.DisplayName : FieldRenderer.Render(item, "Title") : FieldRenderer.Render(item, "Menu Title") : FieldRenderer.Render(item, "Breadcrumb Title");
                }

                return string.IsNullOrEmpty(item["Breadcrumb Title"]) ? string.IsNullOrEmpty(item["Menu Title"]) ? string.IsNullOrEmpty(item["Title"]) ? item.DisplayName : item["Title"] : item["Menu Title"] : item["Breadcrumb Title"];
            }
            else
            {
                return string.Empty;
            }
        }

        // Recursive method that walks up the parent tree to find the
        // site root of the current item.
        private void CreateCrumbs(Item current_item)
        {
            if (current_item == null)
            {
                return;
            }

            if (current_item != null && (!string.Equals(current_item.TemplateName, _siteRootTemplateName, StringComparison.OrdinalIgnoreCase)) && current_item.Parent != null)
            {
                CreateCrumbs(current_item.Parent);
            }

            var active = current_item.ID == _currentItem.ID;

            // Don't display bucket items. JIRA#79 & JIRA#149
            if (current_item.TemplateID.ToString() != _bucketTemplateID && current_item.Visualization.Layout != null)
            {
                _breadcrumbItemList.Add(new BreadcrumbItem(ShowTitle(current_item), LinkManager.GetItemUrl(current_item), active, current_item.ID));
            }
        }
    }

    public class BreadcrumbItem
    {
        public BreadcrumbItem(string displayName, string url, bool active, ID id)
        {
            Active = active;
            DisplayName = displayName;
            Url = url;
            ID = id;
        }

        public bool Active { get; set; }
        public string DisplayName { get; set; }
        public string Url { get; set; }
        public ID ID { get; set; }
    }
}
