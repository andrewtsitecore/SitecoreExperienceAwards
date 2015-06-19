namespace Officecore.Website.code.Helpers
{
    using System;

    using Sitecore.Data.Items;
    using Sitecore.Events;

    public class ItemNameHelper
    {
        protected void HandleItemName(object sender, EventArgs args)
        {
            var item = (Item)Event.ExtractParameter(args, 0);
            string processedName;

            if (item.Database.Name != "master"
                || !item.Paths.Path.StartsWith("/sitecore/content/Home/")
                || item.Name == (processedName = item.Name.ToLower().Replace(' ', '-')))
            {
                return;
            }

            item.Editing.BeginEdit();
            try
            {
                item.Appearance.DisplayName = item.Name;
                item.Name = processedName;
            }
            finally
            {
                item.Editing.EndEdit();
            }
        }
    }
}