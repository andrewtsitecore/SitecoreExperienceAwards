namespace Officecore.Website.code.Helpers
{
    using Sitecore;
    using Sitecore.Web.UI.WebControls;

    public static class TranslationHelper
    {
        // TODO: Would like to use a prefetch here which is cleared on publish.
        public static string Translate(string path, bool allowEdit = true)
        {
            if (string.IsNullOrEmpty(path))
            {
                return null;
            }

            if (Context.Language == null)
            {
                return "[Sitecore.Context.Language null]";
            }

            // TODO: Site specific folders, and then Global
            const string RootPath = "/sitecore/content/Global/Translations/";
            var fullPath = RootPath + path;

            var item = Context.Database.GetItem(fullPath, Context.Language);
            if (item == null)
            {
                return string.Format("[{0}:{1}:{2}]", Context.Database.Name, Context.Language.Name, path);
            }

            return FieldRenderer.Render(item, "Translation", allowEdit ? string.Empty : "disable-web-edit=true");
        }
    }
}