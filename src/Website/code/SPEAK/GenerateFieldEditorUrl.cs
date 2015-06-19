namespace Officecore.Website.code.SPEAK
{
    using System.Collections.Generic;

    using Sitecore.Data;
    using Sitecore.Diagnostics;
    using Sitecore.ExperienceEditor.Speak.Server.Contexts;
    using Sitecore.ExperienceEditor.Speak.Server.Requests;
    using Sitecore.ExperienceEditor.Speak.Server.Responses;
    using Sitecore.Shell.Applications.ContentEditor;
    using Sitecore.Text;

    public class GenerateFieldEditorUrl : PipelineProcessorRequest<ItemContext>
    {
        public string GenerateUrl()
        {
            var fieldList = this.CreateFieldDescriptors(this.RequestContext.Argument);
            var fieldeditorOption = new FieldEditorOptions(fieldList) { SaveItem = true };
            return fieldeditorOption.ToUrlString().ToString();
        }

        private List<FieldDescriptor> CreateFieldDescriptors(string fields)
        {
            var fieldList = new List<FieldDescriptor>();
            var fieldString = new ListString(fields);

            foreach (string field in new ListString(fieldString))
            {
                if (this.RequestContext.Item.Fields[field] != null)
                {
                    var fieldDescriptor = new FieldDescriptor(this.RequestContext.Item, field);
                    fieldList.Add(fieldDescriptor);
                }
                else
                {
                    Log.Debug(string.Format("Item {0} does not contain field {1}",
                        this.RequestContext.Item.Paths.Path, field), this);
                }
            }

            return fieldList;
        }

        public override PipelineProcessorResponseValue ProcessRequest()
        {
            return new PipelineProcessorResponseValue
                       {
                           Value = this.GenerateUrl()
                       };
        }
    }
}