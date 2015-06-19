namespace Officecore.Website.code.Helpers
{
    using Sitecore;
    using Sitecore.Data.Fields;
    using Sitecore.Data.Items;
    using Sitecore.Resources.Media;

    public static class ExtensionHelpers
    {
        public static Item GetMediaField(this Item item, string fieldName)
        {
            if (item == null) return null;

            var imageField = (ImageField)item.Fields[fieldName];
            return imageField != null ? imageField.MediaItem : null;
        }

        public static string GetMediaFieldUrl(this Item item, string fieldName, string defaultUrl)
        {
            var mediaItem = item.GetMediaField(fieldName);
            var url = mediaItem != null ? MediaManager.GetMediaUrl(mediaItem) : defaultUrl;
            return StringUtil.EnsurePrefix('/', url);
        }
    }
}