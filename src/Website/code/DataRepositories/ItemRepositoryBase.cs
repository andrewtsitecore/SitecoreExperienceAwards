namespace Officecore.Website.code.DataRepositories
{
    using System.Collections.Generic;

    using Sitecore;
    using Sitecore.Data;
    using Sitecore.Data.Fields;
    using Sitecore.Data.Items;

    public class ItemRepositoryBase
    {
        public virtual IEnumerable<Item> GetItems(string queryString)
        {
            return Context.Database.SelectItems(SitecoreSiteRoot + queryString);
        }

        public IEnumerable<Item> GetMainMenu(string id)
        {
            var main = Context.Database.GetItem(id);
            return GetMenuChildren(main, "{4025561C-E8FA-4501-9765-AC707E7E8E0B}");
        }

        public IEnumerable<Item> GetMenuChildren(Item main, string templateId)
        {
            if (main != null)
            {
                foreach (Item child in main.Children)
                {
                    if (child.TemplateID.ToString() == templateId)
                    {
                        var lf = (LinkField)child.Fields["Link"];

                        if (lf != null && (!lf.IsInternal || lf.TargetItem != null))
                        {
                            yield return child;
                        }
                    }
                }
            }
        }

        public string SitecoreSiteRoot
        {
            get
            {
                return Context.Site.StartPath;
            }
        }

        public Database Database
        {
            get
            {
                if (Context.ContentDatabase != null)
                {
                    return Context.ContentDatabase;
                }

                return Context.Database;
            }
        }
    }
}