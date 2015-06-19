namespace Officecore.Website.code.Rules.Conditions
{
    using System.Linq;

    using Officecore.Website.code.Helpers;

    using Sitecore;
    using Sitecore.Data;
    using Sitecore.Diagnostics;
    using Sitecore.Rules;
    using Sitecore.Rules.Conditions;

    public class HasProfileInterest<T> : OperatorCondition<T> where T : RuleContext
    {
        public ID InterestID { get; set; }

        public string QueryStringValue { get; set; }

        protected override bool Execute(T ruleContext)
        {
            Assert.ArgumentNotNull(ruleContext, "ruleContext");
            if (!Context.IsLoggedIn || Context.User.Profile == null) return false;

            // OFFICECORE-473 http://www.seanholmesby.com/serialization-exception-in-the-sitecore-8-experience-explorer/
            if (Context.User.Name.Contains("virtual")) return false;

            var interests = ProfileHelper.GetInterests();
            return interests.Contains(InterestID);
        }
    }
}