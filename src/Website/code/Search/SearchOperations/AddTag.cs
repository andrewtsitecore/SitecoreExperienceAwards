namespace Officecore.Website.code.Search.SearchOperations
{
    using System;
    using System.Collections.Generic;
    using System.Collections.Specialized;
    using System.Linq;

    using Officecore.Website.code.Helpers;

    using Sitecore;
    using Sitecore.Buckets.Commands;
    using Sitecore.Configuration;
    using Sitecore.ContentSearch;
    using Sitecore.ContentSearch.SearchTypes;
    using Sitecore.ContentSearch.Utilities;
    using Sitecore.Data;
    using Sitecore.Data.Fields;
    using Sitecore.Data.Items;
    using Sitecore.Diagnostics;
    using Sitecore.Globalization;
    using Sitecore.Security.Accounts;
    using Sitecore.SecurityModel;
    using Sitecore.Shell.Applications.Dialogs.ProgressBoxes;
    using Sitecore.Shell.Applications.WebEdit.Commands;
    using Sitecore.Shell.Framework.Commands;
    using Sitecore.Text;
    using Sitecore.Web;
    using Sitecore.Web.UI.Sheer;

    using Constants = Sitecore.Buckets.Util.Constants;

    [Serializable]
    public class AddTag : WebEditCommand, IItemBucketsCommand
    {
        private static readonly ID TagFieldId = ID.Parse("{C59F4D08-6DC7-4731-B104-F4A7EEE70B98}");

        public override void Execute(CommandContext context)
        {
            if (context.Items.Length <= 0)
            {
                return;
            }

            var obj = context.Items[0];
            var parameters = new NameValueCollection();
            parameters["id"] = obj.ID.ToString();
            parameters["language"] = Context.Language == (Language)null ? obj.Language.ToString() : Context.Language.ToString();
            parameters["version"] = obj.Version.ToString();
            parameters["database"] = obj.Database.Name;
            parameters["user"] = Context.User.Name;
            parameters["isPageEditor"] = context.Parameters["pageEditor"] == "1" ? "1" : "0";
            parameters["searchString"] = context.Parameters.GetValues("url")[0].Replace("\"", string.Empty);
            Context.ClientPage.Start(this, "Run", parameters);
        }

        protected void Run(ClientPipelineArgs args)
        {
            Assert.ArgumentNotNull(args, "args");
            if (!SheerResponse.CheckModified())
            {
                return;
            }

            if (args.IsPostBack)
            {
                if (!args.HasResult)
                {
                    return;
                }

                var obj = Factory.GetDatabase(args.Parameters["database"]).GetItem(args.Parameters["id"]);
                var str = args.Parameters["user"];
                var searchQuery =   SearchHelpers.ExtractSearchQuery(args.Parameters["searchString"]);
                if (obj != null)
                {
                    ProgressBox.Execute(Translate.Text("Adding Tags to Items"), Translate.Text("Tagging Items"), "~/icon/Applications/32x32/bullet_ball_red.png", StartProcess, (object)obj, (object)searchQuery, (object)args.Result, (object)str);
                }

                SheerResponse.Alert(Translate.Text("Finished Tagging all items"));
            }
            else
            {
                var searchQuery = SearchHelpers.ExtractSearchQuery(args.Parameters["searchString"]);
                var sitecoreIndexableItem = (SitecoreIndexableItem)Factory.GetDatabase(args.Parameters["database"]).GetItem(args.Parameters["id"]);
                using (var searchContext = ContentSearchManager.GetIndex(sitecoreIndexableItem).CreateSearchContext())
                {
                    if (!LinqHelper.CreateQuery<SitecoreUISearchResultItem>(searchContext, searchQuery, sitecoreIndexableItem).Any())
                    {
                        return;
                    }

                    var urlString1 = new UrlString(Constants.ContentEditorRawUrlAddress);
                    var urlHandle = new UrlHandle();
                    urlHandle["itemid"] = args.Parameters["id"];
                    urlHandle["databasename"] = args.Parameters["database"];
                    urlHandle["la"] = args.Parameters["language"];
                    urlHandle.Add(urlString1);
                    var urlString2 = new UrlString("/sitecore/shell/Applications/Item browser.aspx");
                    urlString2.Append("ro", "/sitecore/content/Global/Tags");
                    urlString2.Append("sc_content", Context.ContentDatabase.Name);
                    urlString2.Append("filter", "AddTagDialog");
                    SheerResponse.ShowModalDialog(urlString2.ToString(), "1200", "700", string.Empty, true);
                    args.WaitForPostBack();
                }
            }
        }

        private void StartProcess(params object[] parameters)
        {
            var sitecoreIndexableItem = (SitecoreIndexableItem)((Item)parameters[0]);
            if (sitecoreIndexableItem == null)
            {
                Log.Error("Add Tag - Unable to cast current item - " + parameters[0].GetType().FullName, this);
            }
            else
            {
                var list = (List<SearchStringModel>)parameters[1];
                var str1 = (string)parameters[2];
                var accountName = (string)parameters[3];

                var job = Context.Job;
                Assert.IsNotNull(job, "UI Job");
                var language = Context.Language;
                if (job.Options != null)
                {
                    language = job.Options.ClientLanguage;
                }

                using (var searchContext = ContentSearchManager.GetIndex(sitecoreIndexableItem).CreateSearchContext())
                {
                    var query = LinqHelper.CreateQuery<SitecoreUISearchResultItem>(searchContext, list, sitecoreIndexableItem);
                    if (!query.Any())
                    {
                        return;
                    }

                    var account = Account.FromName(accountName, AccountType.User);
                    var num1 = query.Count();
                    var num2 = 1;
                    var str2 = Translate.TextByLanguage("Processed", language);

                    foreach (var searchResultItem in query)
                    {
                        job.Status.Messages.Add(string.Format("{0}: {1}/{2}", str2, num2, num1));
                        ++num2;
                        var obj = searchResultItem.GetItem();

                        if (obj != null)
                        {
                            using (new SecurityEnabler())
                            {
                                if (!obj.Security.CanWrite(account))
                                {
                                    continue;
                                }
                            }

                            if (obj.Fields[TagFieldId] != null)
                            {
                                obj.Editing.BeginEdit();

                                var mlf = (MultilistField)obj.Fields[TagFieldId];
                                if (obj.Fields[TagFieldId].Value == string.Empty || mlf.TargetIDs == null || !mlf.TargetIDs.Any())
                                {
                                    obj.Fields[TagFieldId].Value = str1;
                                }
                                else
                                {
                                    var newId = ID.Parse(str1);

                                    if (!mlf.TargetIDs.Contains(newId))
                                    {
                                        obj.Fields[TagFieldId].Value = obj.Fields[TagFieldId].Value + "|" + str1;
                                    }
                                }

                                obj.Editing.EndEdit();
                            }
                        }
                    }
                }
            }
        }
    }
}