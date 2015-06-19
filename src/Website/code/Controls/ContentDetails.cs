namespace Officecore.Website.code.Controls
{
    using System;

    using Sitecore.Web.UI.WebControls;

    public class ContentDetails : DatasourceControl
    {
        /// <summary>
        /// Render out the title field for a page
        /// This will be Title field if that's filled in, otherwise Menu Title field if that's filled in, otherwise (non-editable) name of the item
        /// </summary>
        /// <returns>The rendered title</returns>
        public virtual String RenderTitleField()
        {
            if (!String.IsNullOrEmpty(this.Item["Title"]))
            {
                return FieldRenderer.Render(this.Item, "Title");
            }

            if (!String.IsNullOrEmpty(this.Item["Menu Title"]))
            {
                return FieldRenderer.Render(this.Item, "Menu Title");
            }

            return this.Item.Name;
        }
    }
}