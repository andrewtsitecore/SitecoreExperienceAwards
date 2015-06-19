namespace Officecore.Website.code.ComputedIndex
{
    using Sitecore.ContentSearch;
    using Sitecore.ContentSearch.ComputedFields;
    using Sitecore.Diagnostics;
    using Sitecore.Links;

    public class ItemUrl : IComputedIndexField
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
            string url = LinkManager.GetItemUrl(indexableItem).Replace("/sitecore/shell", "");
            url = url.Replace("/sitecore/content/Home", "");
            return  url;
        }
    }
}