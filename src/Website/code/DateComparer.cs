namespace Officecore.Website.code
{
    using System;
    using System.Collections.Generic;

    using Sitecore;
    using Sitecore.Data.Items;

    public class DateComparer : IComparer<Item>
    {
        public int Compare(Item x, Item y)
        {
            if (x.Fields["Date"] != null && y.Fields["Date"] != null)
            {
                DateTime time1 = DateUtil.ParseDateTime(x.Fields["Date"].Value, DateTime.Now);
                DateTime time2 = DateUtil.ParseDateTime(y.Fields["Date"].Value, DateTime.Now);
                return DateTime.Compare(time1, time2) * -1;
            }
            return -1;
        }
    }
}