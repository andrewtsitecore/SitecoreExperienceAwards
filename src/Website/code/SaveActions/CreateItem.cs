using System;
using System.Collections.Generic;
using Sitecore;
using Sitecore.Data;
using Sitecore.Data.Items;
using Sitecore.Data.Managers;
using Sitecore.Diagnostics;
using Sitecore.Form.Core.Client.Data.Submit;
using Sitecore.Form.Core.Configuration;
using Sitecore.Form.Core.Controls.Data;
using Sitecore.Form.Core.Utility;
using Sitecore.Forms.Core.Data;
using Sitecore.SecurityModel;
using Sitecore.WFFM.Core.Resources;
using System.Collections.Specialized;
using System.Linq;
using Sitecore.Form.Submit;
using Sitecore.Workflows;

namespace Officecore.Website.code.SaveActions
{
    public class CreateItem : ISaveAction, ISubmit
    {
        public bool CheckSecurity { get; set; }

        public string Mapping { get; set; }

        public string Destination { get; set; }

        public string Template { get; set; }

        public CreateItem()
        {
            CheckSecurity = false;
        }

        public virtual void Execute(ID formid, AdaptedResultList fields, object[] data = null)
        {
            SecurityDisabler securityDisabler = null;
            if (!this.CheckSecurity)
                securityDisabler = new SecurityDisabler();
            try
            {
                CreateItemByFields(formid, fields);
            }
            finally
            {
                if (securityDisabler != null)
                    securityDisabler.Dispose();
            }
        }

        [Obsolete("Use Execute instead.")]
        public virtual void Submit(ID formid, AdaptedResultList fields)
        {
            Execute(formid, fields);
        }

        protected virtual void CreateItemByFields(ID formid, AdaptedResultList fields)
        {
            Folders folders = new Folders();
            folders.SetupFolders();

            var formName = Database.GetDatabase("master").GetItem(formid).DisplayName;

            WorkflowContextStateSwitcher test = new WorkflowContextStateSwitcher(WorkflowContextState.Enabled);

            if (StaticSettings.MasterDatabase == null)
                Log.Warn("The Create Item action : the master database is unavailable", (object)this);

            TemplateItem template = StaticSettings.MasterDatabase.GetTemplate(Template);
            Error.AssertNotNull(template, string.Format(ResourceManager.GetString("NOT_FOUND_TEMPLATE"), Template));
            
            var itemName = DateTime.Today.Year.ToString("0000") + "" + DateTime.Today.Month.ToString("00") + "" + DateTime.Today.Day.ToString("00") + "" + DateTime.Now.TimeOfDay.Minutes + "" + DateTime.Now.TimeOfDay.Seconds + "" + formName;
            Item obj = ItemManager.AddFromTemplate(itemName, template.ID, folders.NewDestination);
            NameValueCollection nameValueCollection = StringUtil.ParseNameValueCollection(this.Mapping, '|', '=');
            obj.Editing.BeginEdit();
            foreach (AdaptedControlResult adaptedControlResult in fields)
            {
                if (nameValueCollection[adaptedControlResult.FieldID] != null)
                {
                    string index = nameValueCollection[adaptedControlResult.FieldID];
                    if (obj.Fields[index] != null)
                    {
                        string str = string.Join("|", new List<string>(FieldReflectionUtil.GetAdaptedListValue(new FieldItem(StaticSettings.ContextDatabase.GetItem(adaptedControlResult.FieldID)), adaptedControlResult.Value, false)).ToArray());

                        //Check to see if the file being uploaded is an image, if it is then format it correctly
                        if (str.Contains("sitecore://master/"))
                        {
                            //todo:this will not work when using a different template
                            if (template.OwnFields[3].Type == "Image")
                            {
                                string[] result = str.Split('{');
                                string id = result[1].Split('}').First();
                                str = "<image mediaid=\"{" + id + "}\" />";
                            }
                        }
                        obj.Fields[index].Value = str;
                        if (index == Sitecore.FieldIDs.DisplayName.ToString())
                            obj.Name = Sitecore.Data.Items.ItemUtil.ProposeValidItemName(adaptedControlResult.Value);
                    }
                    else
                        Log.Warn(string.Format("The Create Item action : the template does not contain field: {0}", (object)index), (object)this);
                }
            }
            obj.Editing.EndEdit();
        }

        
    }
}