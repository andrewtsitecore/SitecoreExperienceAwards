namespace Officecore.Website.layouts.Officecore.Controls.Desktop.News
{
    using System;
    using System.Linq;

    using global::Officecore.Website.code.Controls;

    using Sitecore.Data.Fields;
    using Sitecore.Data.Items;

    public partial class Desktop_Overview : DatasourceControl
    {
        private void Page_Load(object sender, EventArgs e)
        {
            if (this.Item == null)
            {
                //TODO:handle this nicely
            }
            Repeater1.DataSource = this.Item.Children;
            Repeater1.DataBind();
        }
        private int x = 0;


        public String GetClass()
        {
            x++;
            if (x == 1 || x == 2)
            {
                return "#125687";
            }
            else if (x == 3 || x == 4)
            {
                return "#651F76";
            }
            else if (x == 5 || x == 6)
            {
                return "#008998";
            }
            else if (x == 7)
            {
                return "#EF8200";
            }
            else
            {
                x = 0;
                return "#EF8200";
            }
        }

        int z = 0;
        public int GetZindex()
        {
            int returnval = this.Item.Children.Count() - z;
            z++;
            return returnval;
        }

        public String GetColClass(Item i)
        {
            if (i.Fields["Image"] != null)
            {
                ImageField im = i.Fields["Image"];
                if (im != null && im.MediaItem != null)
                {
                    return "col-md-6";
                }
            }
            return "col-md-12";
        }

        public String GetRowClass(Item i)
        {
            if (i.Fields["Image"] != null)
            {
                ImageField im = i.Fields["Image"];
                if (im != null && im.MediaItem != null)
                {
                    return "";
                }
            }
            return "subitem-noimage";
        }

        
    }
}