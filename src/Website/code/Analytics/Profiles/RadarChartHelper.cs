namespace Officecore.Website.code.Analytics.Profiles
{
    using System.Collections.Generic;
    using System.Linq;
    using System.Text;
    using System.Xml;

    using Sitecore;
    using Sitecore.Analytics;
    using Sitecore.Analytics.Data.Items;
    using Sitecore.Analytics.Tracking;
    using Sitecore.Data;
    using Sitecore.Data.Items;

    public class RadarChartHelper
    {
        private void AddChart(int width, int height, StringBuilder builder, Item profileItem)
        {
            var options = new RadarChartOptions(profileItem.Name)
            {
                Width = width,
                Height = height
            };

            builder.Append(DisplayRadarChart(options));
        }

        private static List<string> BuildLookup(RadarChartOptions options, Database db)
        {
            var query = string.Format("/sitecore/system/Marketing Control Panel/Profiles/{0}/*[@@templatename='Profile Key']", options.ProfileName);
            return (from x in db.SelectItems(query) select x.Name.ToLower()).ToList<string>();
        }

        private static SortedList<string, float> BuildLookupDictionary(RadarChartOptions options, Database db)
        {
            var list = new SortedList<string, float>();
            var query = string.Format("/sitecore/system/Marketing Control Panel/Profiles/{0}/*[@@templatename='Profile Key']", options.ProfileName);
            foreach (var str2 in from x in db.SelectItems(query) select x.Name.ToLower())
            {
                list.Add(str2, 0f);
            }

            return list;
        }

        public virtual string DisplayRadarChart(RadarChartOptions options)
        {
            if (options == null)
            {
                return null;
            }
            var values = new List<string>();
            var num = 0;
            var builder = new StringBuilder();
            builder.AppendFormat("var {0} = '{1}';", options.JsChartNameVariableName, options.JsChartName);
            builder.AppendFormat("var width = {0};", options.Width);
            builder.AppendFormat("var height = {0};", options.Height);
            builder.AppendLine("var fontSize = width / 60;");
            builder.AppendFormat("var div = CreateChartDiv({0}, width, height, fontSize);", options.JsChartNameVariableName);
            builder.AppendFormat("var {0} = new Array();", options.JsTicksNameVariableName);
            var profilesToDisplay = GetProfilesToDisplay(options);
            if (profilesToDisplay.Count == 0)
            {
                return null;
            }

            foreach (var pair in profilesToDisplay)
            {
                var jsDataName = "data" + num;
                string str2;
                if (num == 0)
                {
                    str2 = GenerateData(options, pair.Value, jsDataName, options.JsTicksNameVariableName);
                }
                else
                {
                    str2 = GenerateData(options, pair.Value, jsDataName);
                }

                builder.AppendLine(str2);
                var item = "s" + num;
                values.Add(item);
                builder.AppendFormat("var {0} = {{label: '{1}', data: {2}, fontSize: fontSize }};", item, pair.Key, jsDataName);
                num++;
            }

            var str4 = string.Join(",", values);
            builder.AppendFormat("var f = Flotr.draw(div, [{0}], {{", str4);
            builder.AppendLine("  radar: { show: true },");
            builder.AppendLine("  grid: { circular: true, minorHorizontalLines: true },");
            builder.AppendLine("  fontSize: fontSize,");
            builder.AppendFormat("  xaxis: {{ ticks: {0} }}", options.JsTicksNameVariableName);
            builder.AppendLine("});");
            return builder.ToString();
        }

        public virtual string DisplayRadarCharts(int width, int height, string[] profiles)
        {
            var builder = new StringBuilder();
            foreach (var str in profiles)
            {
                var profileItem = Context.Database.GetItem(str);
                AddChart(width, height, builder, profileItem);
            }

            return builder.ToString();
        }

        protected virtual string GenerateData(RadarChartOptions options, Profile profile, string jsDataName)
        {
            return GenerateData(options, profile, jsDataName, null);
        }

        protected virtual string GenerateData(RadarChartOptions options, Profile profile, string jsDataName, string jsTicksName)
        {
            if (profile == null)
            {
                return string.Empty;
            }

            var builder = new StringBuilder();
            builder.AppendFormat("var {0} = new Array();", jsDataName);
            var num = 0;
            var db = Database.GetDatabase("master");
            var list = BuildLookupDictionary(options, db);
            foreach (var pair in profile)
            {
                list[pair.Key] = pair.Value;
            }

            foreach (var pair in list)
            {
                builder.AppendFormat("{0}[{1}] = new Array(2);", jsDataName, num);
                builder.AppendFormat("{0}[{1}][0] = '{2}';", jsDataName, num, num);
                builder.AppendFormat("{0}[{1}][1] = '{2}';", jsDataName, num, pair.Value);
                if (!string.IsNullOrEmpty(jsTicksName))
                {
                    builder.AppendFormat("var newPosition = {0}.length;", jsTicksName);
                    builder.AppendFormat("{0}[newPosition] = new Array(2);", jsTicksName);
                    builder.AppendFormat("{0}[newPosition][0] = '{1}';", jsTicksName, num);
                    builder.AppendFormat("{0}[newPosition][1] = '{1}';", jsTicksName, pair.Key);
                }
                num++;
            }

            return builder.ToString();
        }

        protected virtual PatternCardItem GetMatchingPatternCardItem(RadarChartOptions options)
        {
            var visitProfileForCurrentVisit = GetVisitProfileForCurrentVisit(options);
            if (visitProfileForCurrentVisit == null)
            {
                return null;
            }

            var query = string.Format("/sitecore/system/Marketing Control Panel/Profiles/{0}", options.ProfileName);
            var item = Database.GetDatabase("master").SelectSingleItem(query);
            if (item == null)
            {
                return null;
            }

            var item2 = new ProfileItem(item);
            return item2.MatchPattern(visitProfileForCurrentVisit);
        }

        protected Dictionary<string, Profile> GetPatternCards(RadarChartOptions options)
        {
            var dictionary = new Dictionary<string, Profile>();
            var query = string.Format("/sitecore/system/Marketing Control Panel/Profiles/{0}/*[@@templatename='Pattern Cards']", options.ProfileName);
            var db = Database.GetDatabase("master");
            var item = db.SelectSingleItem(query);
            if (item != null)
            {
                foreach (Item item2 in item.Children)
                {
                    var item3 = new PatternCardItem(item2);
                    if (!string.IsNullOrEmpty(item3.Pattern))
                    {
                        var document = new XmlDocument();
                        document.LoadXml(item3.Pattern);
                        var list = document.SelectNodes("/tracking/profile/key");
                        if (list != null)
                        {
                            var values = BuildLookup(options, db);
                            foreach (XmlNode node in list)
                            {
                                var node2 = node.SelectSingleNode("@name");
                                var node3 = node.SelectSingleNode("@value");
                                if (((node2 != null) && (node3 != null)) && ((options.PatternCardNames.Count <= 0) || options.PatternCardNames.Contains(node2.Value)))
                                {
                                    var index = values.IndexOf(node2.Value.ToLower());
                                    values[index] = node2.Value + "=" + node3.Value;
                                }
                            }

                            var profile = Profile.Parse(item2.Name, string.Join(";", values));
                            dictionary.Add(item2.Name, profile);
                        }
                    }
                }
            }

            return dictionary;
        }

        protected Dictionary<string, Profile> GetProfilesToDisplay(RadarChartOptions options)
        {
            var matchingPatternCardItem = GetMatchingPatternCardItem(options);
            var dictionary = new Dictionary<string, Profile>();
            foreach (var pair in GetPatternCards(options))
            {
                var key = pair.Key;
                if ((matchingPatternCardItem != null) && (pair.Key == matchingPatternCardItem.Name))
                {
                    key = key + options.MatchingPatternIndicator;
                }
                dictionary.Add(key, pair.Value);
            }

            if (options.DisplayCurrentVisitProfile)
            {
                var visitProfileForCurrentVisit = GetVisitProfileForCurrentVisit(options);
                if (visitProfileForCurrentVisit != null)
                {
                    dictionary.Add(options.ProfileName + options.CurrentProfileIndicator, visitProfileForCurrentVisit);
                }
            }

            return dictionary;
        }

        protected virtual Profile GetVisitProfileForCurrentVisit(RadarChartOptions options)
        {
            if (Tracker.Current.Session.Interaction.Profiles.ContainsProfile(options.ProfileName))
            {
                var profile = Tracker.Current.Session.Interaction.Profiles[options.ProfileName];
                return profile;
            }

            return null;
        }
    }
}