namespace Officecore.Website.code.Analytics.Profiles
{
    using System.Collections.Generic;

    public class RadarChartOptions
    {
        public RadarChartOptions(string profileName)
        {
            ProfileName = profileName;
            Width = 400;
            Height = 200;
            DisplayCurrentVisitProfile = true;
            CurrentProfileIndicator = " [current]";
            MatchingPatternIndicator = " [match]";
            PatternCardNames = new List<string>();
        }

        public string CurrentProfileIndicator { get; set; }

        public bool DisplayCurrentVisitProfile { get; set; }

        public int Height { get; set; }

        public string JsChartName
        {
            get
            {
                return ProfileName.Replace(" ", string.Empty);
            }
        }

        public string JsChartNameVariableName
        {
            get
            {
                return (ProfileName.Replace(" ", string.Empty) + "Chart");
            }
        }

        public string JsTicksNameVariableName
        {
            get
            {
                return (ProfileName.Replace(" ", string.Empty) + "Ticks");
            }
        }

        public string MatchingPatternIndicator { get; set; }

        public List<string> PatternCardNames { get; private set; }

        public string ProfileName { get; private set; }

        public int Width { get; set; }
    }
}