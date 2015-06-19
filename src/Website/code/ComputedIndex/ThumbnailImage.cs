namespace Officecore.Website.code.ComputedIndex
{
    using Sitecore.ContentSearch;
    using Sitecore.ContentSearch.ComputedFields;
    using Sitecore.Data.Fields;
    using Sitecore.Diagnostics;
    using Sitecore.Resources.Media;

    public class ThumbnailImage : IComputedIndexField
    {
        public string FieldName { get; set; }
        public string ReturnType { get; set; }

        public object ComputeFieldValue(IIndexable indexable)
        {
            Assert.ArgumentNotNull(indexable, "indexable");
            var indexableItem = indexable as SitecoreIndexableItem;

            if (indexableItem == null)
            {
                Log.Warn(string.Format("{0} : unsupported IIndexable type : {1}", this, indexable.GetType()), this);
                return null;
            }

            ImageField img = indexableItem.Item.Fields["Thumbnail image"];
            return img == null || img.MediaItem == null ? null : MediaManager.GetMediaUrl(img.MediaItem).Replace("/sitecore/shell", "");
        }
    }
}