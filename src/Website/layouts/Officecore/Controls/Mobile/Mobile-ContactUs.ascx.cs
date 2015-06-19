namespace Officecore.Website.layouts.Officecore.Controls.Mobile
{
    using System;
    using System.Collections.Generic;
    using System.Text;
    using System.Web.UI;

    using Sitecore.Data.Items;
    using Sitecore.Links;

    public partial class Mobile_ContactUs : UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        public string getLatLonList()
        {
            var list = new List<string>();
            foreach (Item i in Sitecore.Context.Item.Children)
            {
                list.Add("[" + i.Fields["lat"] + "," + i.Fields["long"] + ",'" + i.Fields["name"] + "','" + getInfoWindow(i) + "']");
            }
            return string.Join(",", list.ToArray());
        }

        private String getInfoWindow(Item i)
        {
            String url = LinkManager.GetItemUrl(i);
            StringBuilder sb = new StringBuilder();
            sb.Append("<div class=\"panel panel-default\">");
            sb.Append("<div class=\"panel-body\" style=\"line-height:1.35;overflow:hidden;white-space:nowrap;\">");
            sb.Append("<div><a href=\""+url+"\">" + i.Fields["Name"] + "</a></div>");
            sb.Append("<div>"+ i.Fields["Address Line 1"] +"</div>");
            sb.Append("<div>" + i.Fields["Address Line 2"] + "</div>");
            sb.Append("<div>" + i.Fields["Phone"] + "</div>");
            sb.Append("<div>" + i.Fields["Fax"] + "</div>");
            sb.Append("<div>" + i.Fields["Sales Email"] + "</div>");
            sb.Append(" </div>");
            sb.Append("</div>");
            return sb.ToString();
        }
    }
}