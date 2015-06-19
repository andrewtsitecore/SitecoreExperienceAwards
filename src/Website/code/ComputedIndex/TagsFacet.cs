namespace Officecore.Website.code.ComputedIndex
{
    using System.Collections.Generic;
    using System.Linq;

    using Officecore.Website.code.Constants;

    using Sitecore.ContentSearch;
    using Sitecore.Data;
    using Sitecore.Data.Fields;
    using Sitecore.Data.Items;

    public class TagsFacet : ComputedIndexFieldBase
    {
        public override object ComputeFieldValue(IIndexable indexable)
        {
            if (!this.IsIndexableItem(indexable, new IsIndexableItemOptions
                        {
                            IncludeRootIDs = new List<ID> { DataRepositoryConstants.CONTENT_ROOT }
                        }))
            {
                return null;
            }

            var item = (Item)(SitecoreIndexableItem)indexable;
            MultilistField multiListField = item.Fields["Tags"];

            if (multiListField == null)
            {
                return null;
            }

            return multiListField.GetItems().Select(x => x.DisplayName).ToList();
        }
    }
}