// http://blogs.perficient.com/portals/2012/12/14/sitecore-dms-in-action-querystringcondition/
namespace Officecore.Website.code.Rules.Conditions
{
    using System;
    using System.Text.RegularExpressions;
    using System.Web;

    using Sitecore.Diagnostics;
    using Sitecore.Rules;
    using Sitecore.Rules.Conditions;

    public class QueryStringCondition<T> : StringOperatorCondition<T> where T : RuleContext
    {
        //Properties
        public string QueryStringName { get; set; }
        public string QueryStringValue { get; set; }

        //Methods
        protected override bool Execute(T ruleContext)
        {
            Assert.ArgumentNotNull(ruleContext, "ruleContext");

            string myQueryStringName = this.QueryStringName ?? string.Empty;
            string myQueryStringValue = this.QueryStringValue ?? string.Empty; //Populated with Value selected in Sitecore Rule by Content Author

            if (string.IsNullOrWhiteSpace(myQueryStringName) || HttpContext.Current == null) return false;

            //Populated with QueryString coming into current Page
            string incomingQueryStringValue = HttpContext.Current.Request.QueryString[myQueryStringName] ?? string.Empty;

            switch (GetOperator())
            {
                case StringConditionOperator.Equals:
                    return string.Equals(incomingQueryStringValue, myQueryStringName);
                case StringConditionOperator.NotEqual:
                    return !string.Equals(incomingQueryStringValue, myQueryStringName);
                case StringConditionOperator.CaseInsensitivelyEquals:
                    return string.Equals(incomingQueryStringValue, myQueryStringName, StringComparison.InvariantCultureIgnoreCase);
                case StringConditionOperator.NotCaseInsensitivelyEquals:
                    return !string.Equals(incomingQueryStringValue, myQueryStringName, StringComparison.InvariantCultureIgnoreCase);
                case StringConditionOperator.Contains:
                    return incomingQueryStringValue.Contains(myQueryStringValue);
                case StringConditionOperator.StartsWith:
                    return incomingQueryStringValue.StartsWith(myQueryStringValue);
                case StringConditionOperator.EndsWith:
                    return incomingQueryStringValue.EndsWith(myQueryStringValue);
                case StringConditionOperator.MatchesRegularExpression:
                    return Regex.IsMatch(incomingQueryStringValue, myQueryStringValue);
                default:
                    return false;
            }
        }
    }
}