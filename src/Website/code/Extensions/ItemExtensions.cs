namespace Officecore.Website.code.Extensions
{
    using Sitecore;
    using Sitecore.Data.Items;
    using Sitecore.Diagnostics;
    using Sitecore.Links;

    public static class ItemExtensions
    {
        /// <summary>
        /// Whether this item has an associated layout, use to filter out items that would error if you
        /// try to access them via a URL
        /// </summary>
        public static bool HasLayout(this Item i)
        {
            Assert.IsNotNull(Context.Device, "Sitecore.Context.Device");

            // Check if content Item has a layout.
            return i.Visualization.GetLayout(Context.Device) != null;

            // BUG: Check MVC controller too, unusable as is on MVC solutions
        }

        public static string Url(this Item i)
        {
            return LinkManager.GetItemUrl(i);
        }
    }
}