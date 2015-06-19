namespace Officecore.Website.code.Service
{
    using System;
    using System.Web.UI.WebControls;

    using Sitecore;
    using Sitecore.Data;
    using Sitecore.Diagnostics;
    using Sitecore.Sites;

    public class SiteService
    {
        public String GetCurrentSection()
        {
            if (Context.Item.Paths.ContentPath.ToLower().Contains("/home/products"))
            {
                return "products";
            }
            if (Context.Item.Paths.ContentPath.ToLower().Contains("/home/services"))
            {
                return "services";
            }
            if (Context.Item.Paths.ContentPath.ToLower().Contains("/home/people"))
            {
                return "people";
            }
            if (Context.Item.Paths.ContentPath.ToLower().Contains("/home/jobs"))
            {
                return "jobs";
            }
            if (Context.Item.Paths.ContentPath.ToLower().Contains("/home/contact"))
            {
                return "contact";
            }
            if (Context.Item.Paths.ContentPath.ToLower().Contains("/home/about-us"))
            {
                return "about";
            }
            if (Context.Item.Paths.ContentPath.ToLower().Contains("/home/news"))
            {
                return "news";
            }
            if (Context.Item.Paths.ContentPath.ToLower().Contains("/home/blog"))
            {
                return "blog";
            }
            if (Context.Item.Paths.ContentPath.ToLower().Contains("/home/events"))
            {
                return "events";
            }
            return "";
        }

        public ID GetSection(String curSection)
        {
            ID templateID = null;
            switch (curSection)
            {

                case "services":
                    {
                        templateID = new ID("{C0A77BC0-4B1B-497B-919B-263CCCA0F788}");
                        break;
                    }

                case "products":
                    {
                        templateID = new ID("{F62FEE2A-4D52-4360-828B-FFAD730E7F67}");
                        break;
                    }

                case "jobs":
                    {
                        templateID = new ID("{60C0E35E-AD98-4653-9818-F6E6282BDC9D}");
                        break;
                    }

                case "contact":
                    {
                        templateID = new ID("{93D5992B-1890-406D-8C69-2C7E6A75A29D}");
                        break;
                    }

                case "about":
                    {
                        templateID = new ID("{39E0C4D8-BCF0-4DC6-9141-3AEB255B0A55}");
                        break;
                    }

                case "news":
                    {
                        templateID = new ID("{D89BDC0E-FF2B-4AA9-BA39-8F863A6056E9}");
                        break;
                    }
                case "people":
                    {
                        templateID = new ID("{B619DAAD-85B9-4E8F-8EA8-F6A7C633830A}");
                        break;
                    }
                case "blog":
                    templateID = new ID("{1D578EDE-4723-4E21-B38E-57DAA0F017B1}");
                    break;
                case "events":
                    templateID = new ID("{8104A35C-485D-4241-B80D-83E0C1926D9F}");
                    break;
            }

            return templateID;
        }

        public void SetSelectedCountry(DropDownList list)
        {
            ListItem country;
            if ((country = list.Items.FindByText("United Kingdom")) != null)
            {
                country.Selected = true;
            }
        }

        public String SetHostAndToggle(String commerce)
        {
            String url = SiteManager.GetSite("website").Properties["hostName"];
            Log.Info("Using Site url as:" + url, this);
            if (url.Contains("|"))
            {
                url = url.Split('|')[0];
            }

            return url;
        }
    }
}