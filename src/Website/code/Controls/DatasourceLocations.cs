namespace Officecore.Website.code.Controls
{
    using System;
    using System.Collections.Specialized;
    using System.Linq;
    using System.Web.UI;
    using Sitecore.Data.Items;
    using Sitecore.Diagnostics;
    using Sitecore.Web;
    using Sitecore.Web.UI.WebControls;
    using Officecore.Website.code.Helpers;

    public class DatasourceControl : UserControl
    {
        private NameValueCollection _properties;
        private Item _item;

        protected string DataSource { get; set; }

        protected static string PageEditorError { get; set; }

        private string GetCurrentRendering()
        {
            var sublayout = (Sublayout)Parent;
            var path = sublayout.Path;

            try
            {
                var rendering = Sitecore.Context.Page.Renderings
                    .Select(r => Sitecore.Context.Database.GetItem(r.RenderingID))
                    .FirstOrDefault(item => item != null && item["Path"] == path);

                return rendering != null ? rendering.Name : path;
            }
            catch
            {
                return path;
            }
        }

        protected override void RenderChildren(HtmlTextWriter writer)
        {
            if (PageEditorError != null)
            {
                Log.Warn(PageEditorError, this);

                if (Sitecore.Context.PageMode.IsPageEditor)
                {
                    writer.Write("<div class='alert alert-warning' style='font-weight: 700'>{0}: {1}</div>", 
                        GetCurrentRendering(),
                        PageEditorError);
                }

                return;
            }

            base.RenderChildren(writer);
        }

        protected override void OnInit(EventArgs e)
        {
            base.OnInit(e);

            var sublayout = (Sublayout)Parent;
            if (sublayout != null)
            {
                DataSource = sublayout.DataSource;
                var paramaeters = Attributes["sc_parameters"];
                if (string.IsNullOrEmpty(paramaeters))
                {
                    paramaeters = sublayout.Parameters;
                }
                _properties = WebUtil.ParseUrlParameters(paramaeters);
            }
        }

        /// <summary>
        /// Either retrive the datasource item if used, or return the current item
        /// </summary>
        public Item Item
        {
            get
            {
                if (_item == null)
                {
                    if (!string.IsNullOrEmpty(DataSource))
                    {
                        _item = Sitecore.Context.Database.GetItem(DataSource) ?? Sitecore.Context.Item;
                    }
                    else
                    {
                        _item = Sitecore.Context.Item;
                    }
                }

                return _item;
            }
        }

        public string GetProperty(string property)
        {
            return _properties[property];
        }

        /// <summary>
        /// Get a URL for a Media item when referenced by a field.
        /// </summary>
        /// <param name="currentItem"></param>
        /// <param name="field"></param>
        /// <returns>string</returns>
        public static string GetImageURL(Item currentItem, string field)
        {
            var item = currentItem;
            return item.GetMediaFieldUrl(field, "/sitecore/shell/Themes/Standard/Images/WebEdit/default_image.png");
        }
    }
}