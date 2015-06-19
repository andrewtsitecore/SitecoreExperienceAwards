namespace Officecore.Website.code
{
    using System.Net.NetworkInformation;
    using System.Web;
    using System.Web.UI;

    using Officecore.Website.code.Constants;

    using Sitecore;
    using Sitecore.Caching;
    using Sitecore.Data.Items;
    using Sitecore.SharedSource.MobileDeviceDetector;

    public class MyContext
    {
        // ReSharper disable once InconsistentNaming
        private static readonly ItemsContext _items;

        public static ItemsContext Items
        {
            get
            {
                return _items;
            }
        }

        static MyContext()
        {
            _items = new ItemsContext();
        }

        public static bool IsAjax
        {
            get { return (HttpContext.Current.Handler as Page) == null; }
        }


        public static bool IsMobile
        {
            get
            {
                const string Key = "IsMobile";
                if (Items[Key] == null)
                {
                    Items[Key] = DeviceResolverHelper.GetBoolProperty("IsMobile") && !IsTablet;
                }

                return (bool)Items[Key];
            }
        }

        public static bool IsTablet
        {
            get
            {
                const string Key = "IsTablet";
                if (Items[Key] == null)
                {
                    Items[Key] = DeviceResolverHelper.GetBoolProperty("IsTablet");
                }

                return (bool)Items[Key];
            }
        }

        public static bool IsDesktop
        {
            get
            {
                const string Key = "IsDesktop";
                if (Items[Key] == null)
                {
                    Items[Key] = !IsMobile && !IsTablet;
                }

                return (bool)Items[Key];
            }
        }

        /// <summary>
        /// Check if you have network connectivity
        /// If you know you don't have internet, enable flight mode and/or disable your ethernet adapter!
        /// Otherwise we would need to do a potentially time-consuming DNS check here.
        /// </summary>
        public static bool IsOnline
        {
            get
            {
                const string Key = "IsOnline";
                if (Items[Key] == null)
                {
                    Items[Key] = NetworkInterface.GetIsNetworkAvailable();
                }

                return (bool)Items[Key];
            }
        }

        public static bool IsMaster
        {
            get { return Context.Database != null && Context.Database.Name == "master"; }
        }

        public static Item SiteRoot
        {
            get
            {
                const string Key = "Item";
                if (Items[Key] == null)
                {
                    Item current = Context.Item;
                    Item root = current.Axes.SelectSingleItem("ancestor-or-self::*[@@templateid='" + TemplateConstants.SiteRootId + "']");
                    Items[Key] = root ?? Context.Database.GetItem(Context.Site.StartPath);
                }

                return (Item)Items[Key];
            }
        }
    }
}