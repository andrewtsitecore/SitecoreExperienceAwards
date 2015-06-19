namespace Officecore.Website.code.Model
{
    using Sitecore.ContentSearch;
    using Sitecore.ContentSearch.SearchTypes;

    public class SubItem : SearchResultItem
    {
        [IndexField("_latestversion")]
        public bool IsLatestVersion { get; set; }
    }
}