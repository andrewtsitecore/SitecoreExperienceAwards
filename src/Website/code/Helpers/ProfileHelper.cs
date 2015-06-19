namespace Officecore.Website.code.Helpers
{
    using System.Collections.Generic;

    using Sitecore;
    using Sitecore.Data;

    public static class ProfileHelper
    {
        public static IEnumerable<ID> GetInterests()
        {
            if (!Context.IsLoggedIn) yield break;

            foreach (var tag in Context.User.Profile.GetCustomProperty("Interests").Split('|'))
            {
                ID tagID;

                if (ID.TryParse(tag, out tagID))
                {
                    yield return tagID;
                }
            }
        }
    }
}