namespace Officecore.Website.code.ServerControls
{
    using System.Text.RegularExpressions;
    using System.Web.UI;

    using Sitecore.Web.UI.WebControls;

    public class TextEnforceParagraph : Text
    {
        private static readonly Regex HasBlockElements = new Regex("<p|div|ul|ol|dl|table^>]*>", RegexOptions.Compiled);

        public bool ProcessRegex { get; set; }

        public TextEnforceParagraph()
        {
            ProcessRegex = true;
        }

        protected override void Render(HtmlTextWriter output)
        {
            if (Sitecore.Context.PageMode.IsPageEditor)
            {
                base.Render(output);
                return;
            }

            // Only run if Item set
            var item = Item ?? GetItem();
            if (item == null || string.IsNullOrEmpty(Field)) return;

            // Only run if it's a rich text field and has a value
            var field = item.Fields[Field];
            if (field == null || field.TypeKey != "rich text" || string.IsNullOrEmpty(field.Value)) return;

            // Get field value, cleaning up some useless tags.
            var value = field.Value
                .Replace("<p></p>", string.Empty)
                .Replace("<p> </p>", string.Empty)
                .Replace("<p>&nbsp;</p>", string.Empty)
                .Trim();

            // Ensure we still have something to work with
            if (string.IsNullOrEmpty(value)) return;

            // Don't process if content already has block-level elements
            if (ProcessRegex)
            {
                if (HasBlockElements.IsMatch(value))
                {
                    base.Render(output);
                    return;
                }
            }

            // Seems we need to add the P tag
            output.Write("<p>");
            base.Render(output);
            output.Write("</p>");
        }
    }
}