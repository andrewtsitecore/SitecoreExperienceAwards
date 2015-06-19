namespace Officecore.Website.code.Rules.Conditions
{
    using Sitecore.Diagnostics;
    using Sitecore.Rules;
    using Sitecore.Rules.Conditions;

    public class IsLatestVersion<T> : WhenCondition<T> where T : RuleContext
    {
        /// <summary>
        /// Evaluates the condition
        /// </summary>
        /// <param name="ruleContext">The context in which the rule is ran</param>
        /// <returns>True if the item in the rulecontext</returns>
        protected override bool Execute(T ruleContext)
        {
            Assert.ArgumentNotNull(ruleContext, "ruleContext");
            Assert.ArgumentNotNull(ruleContext.Item, "Context Item");
            
            var item = ruleContext.Item;
            return item.Versions.IsLatestVersion();
        }
    }
}