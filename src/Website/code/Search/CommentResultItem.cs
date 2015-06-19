namespace Officecore.Website.code.Search
{
    using Officecore.Website.code.Model;

    using Sitecore.Data;

    public class CommentResultItem : ResultItem
    {
        public virtual ID BlogPost { get; set; }
    }
}