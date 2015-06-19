namespace Officecore.Website.code.Search
{
    using Sitecore.ContentSearch;
    using Sitecore.ContentSearch.SearchTypes;

    public class ProductResultItem : SearchResultItem
    {
        [IndexField("internal_name")]
        public string InternalName { get; set; }

        [IndexField("sku")]
        public string SKU { get; set; }

        [IndexField("Display_on_site")]
        public bool DisplayOnSite { get; set; }

        [IndexField("Display_name")]
        public string DisplayName { get; set; }

        [IndexField("Short_description")]
        public string ShortDescription { get; set; }

        [IndexField("Long_description")]
        public string LongDescription { get; set; }

        [IndexField("Categories_list")]
        public string CategoriesList { get; set; }

        [IndexField("_latestversion")]
        public bool IsLatestVersion { get; set; }

        [IndexField("__updated_by")]
        public string Created { get; set; }

        [IndexField("metatags-other_keywords")]
        public string Keywords { get; set; }

        [IndexField("metatags-predefined_keyowrds")]
        public string DefinedKeywords { get; set; }

        [IndexField("daterange")]
        public string DateRange { get; set; }
    }
}