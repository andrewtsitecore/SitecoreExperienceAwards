namespace Officecore.Website.code.Helpers
{
    using Sitecore;
    using Sitecore.Analytics;
    using Sitecore.Analytics.Data.Items;
    using Sitecore.Data;

    public static class AnalyticsHelper
    {
        public static bool TriggerGoal(ID goalID)
        {
            if (goalID == (ID)null)
            {
                return false;
            }

            if (Tracker.Current == null || Tracker.Current.Interaction.CurrentPage == null)
            {
                return false;
            }

            var goalItem = Context.Database.GetItem(goalID);
            if (goalItem == null)
            {
                return false;
            }

            if (!Tracker.IsActive)
            {
                Tracker.StartTracking();
            }

            var goal = new PageEventItem(goalItem);
            Tracker.Current.Interaction.CurrentPage.Register(goal);
            //Tracker.Current.Interaction.Sub

            return true;
        }
    }
}