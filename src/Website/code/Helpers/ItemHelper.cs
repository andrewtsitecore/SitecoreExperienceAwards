namespace Officecore.Website.code.Helpers
{
    using System;
    using System.Collections.Generic;

    using Sitecore;
    using Sitecore.Data.Items;

    public static class ItemHelper
    {
        /// <summary>
        /// Check whether a specific field has to be wrapped around with paragraph tags
        /// </summary>
        /// <param name="item">The item</param>
        /// <param name="fieldname">The field</param>
        /// <returns>True if the string contained in the field does not start with a paragraph tag. False otherwise</returns>
        public static bool PrefixWithParagraphTag(Item item, String fieldname)
        {
            if (item[fieldname].StartsWith("<p>", StringComparison.InvariantCultureIgnoreCase))
            {
                return false;
            }

            return true;
        }

        /// <summary>
        /// Get all templates and basetemplates for an item
        /// </summary>
        /// <param name="item">The item to get the templates from</param>
        /// <returns>List with normalized template GUIDs</returns>
        public static List<string> GetAllTemplates(Item item)
        {
            if (item != null && item.Template != null)
            {
                var list = new List<string> { item.TemplateID.ToString() };
                RecurseTemplates(list, item.Template);
                return list;
            }

            return new List<string>();
        }

        /// <summary>
        /// Recursive method to go through the base templates of base templaces etc.
        /// </summary>
        /// <param name="list">The list containing template ids</param>
        /// <param name="template">The template item to go through</param>
        private static void RecurseTemplates(List<string> list, TemplateItem template)
        {
            foreach (var baseTemplateItem in template.BaseTemplates)
            {
                list.Add(baseTemplateItem.ID.ToString());
                if (baseTemplateItem.ID != TemplateIDs.StandardTemplate)
                {
                    RecurseTemplates(list, baseTemplateItem);
                }
            }
        }
    }
}