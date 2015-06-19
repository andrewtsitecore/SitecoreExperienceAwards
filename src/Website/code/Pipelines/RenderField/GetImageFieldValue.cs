namespace Officecore.Website.code.Pipelines.RenderField
{
    using Sitecore.Collections;
    using Sitecore.Configuration;
    using Sitecore.Text;

    public class GetImageFieldValue : Sitecore.Pipelines.RenderField.GetImageFieldValue
    {
        public class ImageRenderer : Sitecore.Xml.Xsl.ImageRenderer
        {
            protected bool xhtml;

            protected override string GetSource()
            {
                var baseUrl = new UrlString(base.GetSource().Replace("&amp;", "&"));
                if (Parameters.ContainsKey("crop"))
                {
                    baseUrl.Add("crop", Parameters["crop"]);
                    // remove crop from the parameters dictionary so it's not added as an attribute on the img tag 
                    Parameters.Remove("crop");
                }
                return baseUrl.GetUrl(this.xhtml && Settings.Rendering.ImagesAsXhtml);
            }

            // xhtml on the base is private
            protected override void ParseNode(SafeDictionary<string> attributes)
            {
                string str = this.Extract(attributes, new string[1] { "outputMethod" });
                this.xhtml = str == "xhtml" || Settings.Rendering.ImagesAsXhtml && str != "html";
                base.ParseNode(attributes);
            }
        }

        protected override Sitecore.Xml.Xsl.ImageRenderer CreateRenderer()
        {
            return new ImageRenderer();
        }
    }
}