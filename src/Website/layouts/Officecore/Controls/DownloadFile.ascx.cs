namespace Officecore.Website.layouts.Officecore.Controls
{
    using System;
    using System.Web.UI;

    using global::Officecore.Website.code.Controls;

    using Sitecore.Data.Fields;
    using Sitecore.Data.Items;

    public partial class DownloadFile : DatasourceControl
    {
        private void Page_Load(object sender, EventArgs e)
        {
            if (Item == null)
            {
                if (!Sitecore.Context.PageMode.IsPageEditor)
                {
                    Visible = false;
                }
            }
            else
            {
                var file = (FileField)Item.Fields["File"];
                var goal = (ReferenceField)Item.Fields["Goal"];

                if (file == null || goal == null)
                {
                    if (!Sitecore.Context.PageMode.IsPageEditor)
                    {
                        Visible = false;
                        return;
                    }

                    lnk.Visible = false;
                }
                else
                {
                    lnk.NavigateUrl = string.Format("/layouts/ge/DownloadFile.ashx?id={0}&goalID={1}", file.MediaID, goal.TargetID);
                    lnk.Text = Item["Submit Text"];
                }
            }
        }

        protected override void Render(HtmlTextWriter writer)
        {
            if (Item == null)
            {
                base.Render(writer);
                return;
            }

            using (new ContextItemSwitcher(Item))
            {
                base.Render(writer);
            }
        }
    }
}