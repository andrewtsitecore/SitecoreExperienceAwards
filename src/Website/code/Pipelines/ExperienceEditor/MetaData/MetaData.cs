namespace Officecore.Website.code.Pipelines.ExperienceEditor.MetaData
{
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Web;
    using Sitecore.Pipelines;
    using Sitecore;
    using Sitecore.Diagnostics;
    using Sitecore.Web;
    using Sitecore.Pipelines.HttpRequest;
    using Sitecore.Configuration;

    public class MetaData : PipelineProcessorRequest<Stringcontext>
    {
        public override PipelineProcessorResponseValue ProcessRequest()
        {
            return new PipelineProcessorResponseValue
            {
                Value = Sitecore.Context.Item.Name;
            };
        }
    }
}