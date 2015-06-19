namespace Officecore.Website.code.Search
{
    using System.Collections.Generic;

    using Officecore.Website.code.Model;

    using Sitecore.Data;

    public class TagsResultItem : ResultItem
    {
        public virtual IEnumerable<ID> Tags { get; set; }

        public virtual IEnumerable<ID> Interests { get; set; }
    }
}