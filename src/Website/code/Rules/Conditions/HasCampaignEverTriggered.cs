﻿namespace Officecore.Website.code.Rules.Conditions
{
    using System;
    using System.Linq;

    using Sitecore.Analytics;
    using Sitecore.Analytics.Data;
    using Sitecore.Rules;
    using Sitecore.Rules.Conditions;

    public class HasCampaignEverTriggered<T> : WhenCondition<T> where T:RuleContext
    {
        public string CampaignId { get; set; }

        protected override bool Execute(T ruleContext)
        {
            Tracker.Current.Contact.LoadHistorycalData(4);
            var points = Tracker.Current.Contact.System.Value;
            return Tracker.Current.Interaction.GetPages().Any(x => x.PageEvents.FirstOrDefault(y => string.Equals(y.Data, CampaignId, StringComparison.InvariantCultureIgnoreCase)) != null);
        }
    }
}