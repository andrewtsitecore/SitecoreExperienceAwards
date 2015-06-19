namespace Officecore.Website.layouts.Officecore.EmailCampaign
{
    using System;
    using System.Collections.Specialized;
    using System.Web.UI;

    using Sitecore.Data.Items;
    using Sitecore.Links;
    using Sitecore.Web;
    using Sitecore.Web.UI.WebControls;

    public partial class EmailPromoSpot : UserControl
    {

        private NameValueCollection properties;
        private Item item;

        protected string DataSource { get; set; }

        private void Page_Load(object sender, EventArgs e)
        {
            var sublayout = (Sublayout)Parent;
            if (sublayout != null)
            {
                DataSource = sublayout.DataSource;

                string paramaeters = Attributes["sc_parameters"];
                if (string.IsNullOrEmpty(paramaeters))
                {
                    paramaeters = sublayout.Parameters;
                }

                properties = WebUtil.ParseUrlParameters(paramaeters);
            }

            this.promoDescription.Item = this.Item;
            this.promoImage.Item = this.Item;

            this.promoLink.NavigateUrl = LinkManager.GetItemUrl(this.Item);
            this.promoTitle.Item = this.Item;

        }

        /// <summary>
        /// Either retrive the datasource item if used, or return the current item
        /// </summary>
        public Item Item
        {
            get
            {
                if (item == null)
                {
                    if (!string.IsNullOrEmpty(DataSource))
                    {
                        item = Sitecore.Context.Database.GetItem(DataSource) ?? Sitecore.Context.Item;
                    }
                    else
                    {
                        item = Sitecore.Context.Item;
                    }
                }
                return item;
            }
        }

        public string GetProperty(string property)
        {
            return properties[property];
        }
    }
}