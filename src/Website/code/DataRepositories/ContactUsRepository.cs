namespace Officecore.Website.code.DataRepositories
{
    using System.Collections.Generic;
    using System.Text;

    using Sitecore;
    using Sitecore.Data.Items;
    using Sitecore.Links;

    public class ContactUsRepository : ItemRepositoryBase
    {
        /// <summary>
        /// Get the map information on all locations
        /// </summary>
        /// <returns>A string with map information about all locations</returns>
        public string GetLatLonListGlobal()
        {
            var list = new List<string>();

            foreach (Item i in Context.Item.Children)
            {
                list.Add(GetLatLonListRegion(i));
            }

            return string.Join(",", list.ToArray()); 
        }

        /// <summary>
        /// Get the map information on a specific region
        /// </summary>
        /// <param name="region">The region</param>
        /// <returns>The map infomation</returns>
        public string GetLatLonListRegion(Item region)
        {
            var list = new List<string>();
            list.Add("[" + region.Fields["lat"] + "," + region.Fields["long"] + ",'" + region.Fields["name"] + "','" + GetInfoWindow(region) + "']");
            
            return string.Join(",", list.ToArray());
        }

        /// <summary>
        /// Get the information for the popup in the map
        /// </summary>
        /// <param name="i">The region</param>
        /// <returns>An html string with the information about the region</returns>
        private string GetInfoWindow(Item i)
        {
            var url = LinkManager.GetItemUrl(i);
            var sb = new StringBuilder();
            sb.Append("<div class=\"panel panel-default\">");
            sb.Append("<div class=\"panel-body\" style=\"line-height:1.35;overflow:hidden;white-space:nowrap;\">");
            sb.Append("<div><a href=\"" + url + "\">" + i.Fields["Name"] + "</a></div>");
            sb.Append("<div>" + i.Fields["Address Line 1"] + "</div>");
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