namespace Officecore.Website.code.Rules.Actions
{
    using Sitecore;
    using Sitecore.Forms.Core.Rules;

    public class ReadFromContextItemField<T> : ReadValue<T> where T : ConditionalRuleContext
    {
        protected override object GetValue()
        {
            return Context.Item != null ? Context.Item[Name] : string.Empty;
        }
    }
}