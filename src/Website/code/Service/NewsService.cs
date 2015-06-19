namespace Officecore.Website.code.Service
{
    using System;
    using System.Collections.Generic;
    using System.Linq;

    using Officecore.Website.code.Constants;

    using Sitecore;
    using Sitecore.Data.Items;

    public class NewsService
    {
        public List<Item> GetLatestNews(int maxItems)
        {
            var newsRoot = Context.Database.GetItem(TemplateConstants.NewsRootId);

            var lst = 
                newsRoot.Axes.GetDescendants().Where(
                    x =>
                        string.Equals(x.TemplateID.ToString(), TemplateConstants.NewsArticleOneColumnId,
                            StringComparison.InvariantCultureIgnoreCase) ||
                        string.Equals(x.TemplateID.ToString(), TemplateConstants.NewsArticleTwoColumnId,
                            StringComparison.InvariantCultureIgnoreCase) ||
                        string.Equals(x.TemplateID.ToString(), TemplateConstants.NewsArticleThreeColumnId,
                            StringComparison.InvariantCultureIgnoreCase)).OrderBy(x => x["Date"]).Reverse().ToList();

            if (maxItems > 0)
            {
                lst = lst.Take(maxItems).ToList();
            }

            return lst;
        }
    }
}