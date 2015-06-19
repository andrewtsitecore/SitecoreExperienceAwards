namespace Officecore.Website.code.Sheer
{
    using Sitecore;
    using Sitecore.Shell.Framework.Commands;
    using Sitecore.Text;
    using Sitecore.Web.UI.Sheer;

    public class Editor : Command
    {
        public override void Execute([NotNull] CommandContext context)
        {
            var url = new UrlString("/sitecore/shell/Applications/Content%20editor.aspx");
            SheerResponse.Eval("open('" + url + "')");
        }
    }
}