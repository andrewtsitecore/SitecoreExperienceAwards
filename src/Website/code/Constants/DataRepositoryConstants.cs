namespace Officecore.Website.code.Constants
{
    using Sitecore.Data;

    public static class DataRepositoryConstants
    {
        public static ID CONTENT_ROOT = new ID("{0DE95AE4-41AB-4D01-9EB0-67441B7C2450}");
        //public const string SITE_ROOT = "{4E7AB8B1-6A39-4C8C-BF5B-816F8105BFFD}";
        public const string SITE_SECTION = "//*[@@templatekey='site section' or @@templatekey='news section']";
        public const string TOOLBOX_QUERY = "/Toolbox/*";
        public const string NEWS_QUERY = "descendant::*[@@TemplateKey='" + TemplateConstants.NewsArticleOneColumnKey +
                                                  "' or @@TemplateKey='" + TemplateConstants.NewsArticleTwoColumnKey +
                                                  "' or @@TemplateKey='" + TemplateConstants.NewsArticleThreeColumnKey + "']";
        public const string PRODUCT_CATEGORY_QUERY = "child::*[@@tid='" + TemplateConstants.ProductCategoryId + "']";
        public const string READ_MORE_TEXT = "{B3A81310-7654-4C37-82D1-08C900CF4213}";
        public const string MENU = "{DB81A3B1-87E1-499F-B47E-51017950EEE5}";
        public const string MENUFOOTER = "{7F64A446-03B8-4A38-BFEF-B388B81CF71A}";
        public const string MENUMOBILE = "{2A4E65CE-A687-4521-B0D4-24897D7AD3AC}";

        public const string GlobalECommerceRoot = "{A707A0BD-CF11-4048-BCE8-D34F3BF2BE59}";
    }
}