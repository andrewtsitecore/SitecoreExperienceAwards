namespace Officecore.Website.code.Constants
{
    using Sitecore.Data;
    using Sitecore.Data.Items;

    public static class TemplateConstants
    {
        public const string SiteRootId = "{54C60AED-31AF-400E-8106-17C3BF28E3A1}";
        public const string SiteRootKey = "Site Root";

        public const string SiteSectionId = "{B2477E15-F54E-4DA1-B09D-825FF4D13F1D}";
        public const string SiteSectionKey = "Site Section";

        public const string NewsArticleOneColumnKey = "news article - one column";
        public const string NewsArticleTwoColumnKey = "news article - two column";
        public const string NewsArticleThreeColumnKey = "news article - three column";

        public const string NewsArticleOneColumnId = "{34A5EDED-6BD2-4DF5-ADDB-163F4655BEC7}";
        public const string NewsArticleTwoColumnId = "{D89BDC0E-FF2B-4AA9-BA39-8F863A6056E9}";
        public const string NewsArticleThreeColumnId = "{74A07E7C-B826-4B23-B87C-11398E9D6FEF}";

        public const string ProductCategoryId = "{8A471A2C-F885-416F-826E-5CD3272CDBC4}";

        public static Item SearchPageId { get; set; } 
        public const string ProductId = "{07D9A696-A2FE-4A59-88FB-A57FE386B8AD}";

        public static class uCommerce
        {
            public static ID ProductBaseTemplateId = new ID("{FD9DC0B0-FC6B-439A-9DF3-C513479AAFA2}");
            public static ID CategoryWithFacetsId = new ID("{19A81A18-24AA-4103-B66D-D2C6776873F5}");
            public static ID CategoryWithoutFacetsId = new ID("{BF4C9CEC-0A86-4346-B45E-5DD85A036A71}");

            public const string DeskLampId = "{C1C91A65-2245-48BC-8880-FD6813026292}";
            public const string DeskChairId = "{AD1CBDB1-0153-4909-8B82-EAFCA96A54BE}";
            public const string EssentialsId = "{688468A7-6587-4DB9-83F5-7941EF495771}";
            public const string SummerSportsId = "{73DA3C29-2E24-4B4C-AD2F-1F3C0FD7DA1C}";
            public const string WinterSportsId = "{0DC42442-1D52-4BB3-A6F4-40C98F4CDD06}";
            public const string HomeId = "{2B6FE04B-182A-495A-A495-A4C4C8810B5B}";
        }

        public const string NewsRootId = "{E58768BF-9A8C-4E04-B031-80F2DA354081}";

        public const string FinanceTemplateId = "{1A7B1DFF-E172-4DCF-8F01-B34571075756}";
    }
}