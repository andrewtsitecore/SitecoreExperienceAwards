namespace Officecore.Website.code.Rules.Conditions
{
    using Sitecore.Diagnostics;
    using Sitecore.Rules;
    using Sitecore.Rules.Conditions;

    public class IsOnline<T> : WhenCondition<T> where T : RuleContext
    {
        public string Value { get; set; }

        protected override bool Execute(T ruleContext)
        {
            Assert.ArgumentNotNull(ruleContext, "ruleContext");

            return MyContext.IsOnline;
        }
    }
}