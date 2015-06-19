namespace Officecore.Website
{
    using Sitecore.Configuration;
    using Sitecore.Data;
    using Sitecore.Data.Items;

    public class SearchSettings
    {
        private static readonly Database masterDB;

        static SearchSettings()
        {
            masterDB = Factory.GetDatabase("master");
        }
        public static string get(string name)
        {
            Item commonText = masterDB.GetItem("/sitecore/content/settings/common text/" + name);
            return commonText == null ? null : commonText["text"];
        }
    }
}