/*
 * Author: Steve McGill, smg@sitecore.net
 * Originally made for the GE POC
 */

namespace Officecore.Website.layouts.scripts
{
    using System;
    using System.Globalization;
    using System.IO;
    using System.Linq;
    using System.Text;
    using System.Web;

    using LumenWorks.Framework.IO.Csv;

    using Sitecore;
    using Sitecore.Configuration;
    using Sitecore.Data;
    using Sitecore.Data.Fields;
    using Sitecore.Data.Items;
    using Sitecore.SecurityModel;

    public class ImportContent : IHttpHandler
    {
        public void ProcessRequest(HttpContext context)
        {
            DeleteImportedContent();
            ImportFromCsv();
        }

        private static void ImportFromCsv()
        {
            const char Delimiter = ',';

            var masterDb = Factory.GetDatabase("master");

            var kbRootID = ID.Parse("{0CE48934-F951-476A-9170-4ECEE0535004}");
            var kbTemplateID = new TemplateID(ID.Parse("{23CFC180-AF56-4F12-B1DB-F26534BCD218}"));

            var newsRootID = ID.Parse("{E58768BF-9A8C-4E04-B031-80F2DA354081}");
            var newsTemplateID = new TemplateID(ID.Parse("{D89BDC0E-FF2B-4AA9-BA39-8F863A6056E9}"));

            var eventsRootID = ID.Parse("{267EBE33-A619-4C7C-B546-D42E6F80F705}");
            var eventsTemplateID = new TemplateID(ID.Parse("{8104A35C-485D-4241-B80D-83E0C1926D9F}"));

            var blogsRootID = ID.Parse("{9665C37E-2401-4093-BEBC-B54987F08014}");
            var blogsTemplateID = new TemplateID(ID.Parse("{1D578EDE-4723-4E21-B38E-57DAA0F017B1}"));

            var mediaIDs = masterDb.SelectItems("/sitecore/media library/Images/GE/*").Select(x => x.ID).ToList();
            var numMedia = mediaIDs.Count;

            var r = new Random();
            var idx = 0;
            using (new SecurityDisabler())
            {
                using (var csv = new CsvReader(new StreamReader(@"c:\websites\importcontent.csv", Encoding.UTF8), hasHeaders: true, delimiter: Delimiter))
                {
                    csv.MissingFieldAction = MissingFieldAction.ReplaceByEmpty;

                    while (csv.ReadNextRecord())
                    {
                        idx++;

                        var title = csv[0];
                        var key = ItemUtil.ProposeValidItemName(title).ToLower().Replace(" ", "-") + "-" + idx;

                        var date = DateTime.ParseExact(csv[1], "dd/MM/yy", CultureInfo.InvariantCulture);
                        var type = csv[2];
                        var roles = StringUtil.Split(csv[3], Delimiter, true);
                        var content = csv[4];

                        ID rootID;
                        TemplateID templateID;

                        switch (type)
                        {
                            case "KB":
                                rootID = kbRootID;
                                templateID = kbTemplateID;
                                break;
                            case "News":
                                rootID = newsRootID;
                                templateID = newsTemplateID;
                                break;
                            case "Blog":
                                rootID = blogsRootID;
                                templateID = blogsTemplateID;
                                break;
                            default:
                                rootID = eventsRootID;
                                templateID = eventsTemplateID;
                                break;
                        }

                        var rootItem = masterDb.GetItem(rootID);
                        var item = rootItem.Add(key, templateID);

                        item.Editing.BeginEdit();
                        item["Date"] = DateUtil.ToIsoDate(date);
                        item.Fields[FieldIDs.DisplayName].Value = title;
                        item["Breadcrumb Title"] = title;
                        item["Menu Title"] = title;
                        item["Title"] = string.Format("[{0}] {1}", csv[3], title);
                        item["Text"] = content;
                        item["Roles"] = string.Join("|", roles.Where(x => !string.IsNullOrWhiteSpace(x)).Select(x => @"ge\" + x)).Trim();
                        item["IsImported"] = "1";

                        var imageField = (ImageField) item.Fields["image"];
                        var randomIndex = r.Next(0, numMedia);
                        imageField.MediaID = mediaIDs[randomIndex];

                        item.Editing.EndEdit();
                    }
                }
            }
        }

        private static void DeleteImportedContent()
        {
            foreach (var item in Context.Database.SelectItems("/sitecore/content/home/news//*[@isimported='1']|/sitecore/content/home/events//*[@isimported='1']|/sitecore/content/home/blogs//*[@isimported='1']|/sitecore/content/home/knowledge//*[@isimported='1']"))
            {
                item.Delete();
            }
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}