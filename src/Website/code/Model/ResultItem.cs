namespace Officecore.Website.code.Model
{
    using System;

    using Sitecore.ContentSearch;
    using Sitecore.ContentSearch.SearchTypes;

    public class ResultItem : SearchResultItem
    {
        [IndexField("_uniqueid")]
        public string UniqueId { get; set; }

        [IndexField("_displayname")]
        public string DisplayName { get; set; }

        [IndexField("_latestversion")]
        public bool IsLatestVersion { get; set; }

        [IndexField("title")]
        public string Title { get; set; }

        [IndexField("overview_abstract")]
        public string Abstract { get; set; }

        [IndexField("__updated_by")]
        public string Created { get; set; }

        private string _text;

        [IndexField("text")]
        public string Text
        {
            get { return _text; }
            set
            {
                if (value != null && value.Length > 150)
                {
                    _text = value.ToString().Substring(0, 149) + "...";
                }
                else { _text = value; }
            }
        }

        [IndexField("metatags-description")]
        public string Description { get; set; }

        [IndexField("metatags-other_keywords")]
        public string Keywords { get; set; }

        [IndexField("metatags-predefined_keyowrds")]
        public string DefinedKeywords { get; set; }

        [IndexField("__smallupdateddate")]
        public DateTime LastUpdate { get; set; }

        [IndexField("daterange")]
        public string DateRange { get; set; }

        [IndexField("terms")]
        public string Terms { get; set; }

        [IndexField("termstext")]
        public string TermsText { get; set; }

        [IndexField("thumbnail image")]
        public string ThumbnailImage { get; set; }

        [IndexField("itemurl")]
        public string ItemUrl { get; set; }

        [IndexField("short description")]
        public string ShortDescription { get; set; }
    }
}