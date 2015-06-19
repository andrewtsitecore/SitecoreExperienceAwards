namespace Officecore.Website.code.Pipelines.RenderField
{
    using System.Text.RegularExpressions;
    using System.Web;

    using Sitecore.Analytics;
    using Sitecore.Form.Core.Client.Data.Submit;
    using Sitecore.Pipelines.RenderField;

    public class ExpandAnalyticsTokens
    {
        public void Process(RenderFieldArgs args)
        {
            if (!Tracker.IsActive)
                return;

            var str = new Regex("\\[\\[([^\\]]*)\\]\\]").Replace(args.Result.FirstPart, Evaluator);
            args.Result.FirstPart = str;
        }

        private string Evaluator(Match match)
        {
            var context = HttpContext.Current;
            if (context == null) return match.Groups[0].Value;

            var session = context.Session;
            if (session == null) return match.Groups[0].Value;

            var fields = session["oc_FormFields"] as AdaptedResultList;
            if (fields == null) return match.Groups[0].Value;

            var field = match.Groups[1].Value;
            return GetStringFromFormSafe(fields, field) ?? match.Groups[0].Value;
        }

        private static string GetStringFromFormSafe(AdaptedResultList fields, string fieldName)
        {
            if (fields == null)
            {
                return null;
            }

            var field = fields.GetEntryByName(fieldName);
            return field == null ? null : field.Value;
        }
    }
}