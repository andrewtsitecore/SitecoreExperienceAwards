namespace Officecore.Website.code.Pipelines.GetAboutInformation
{
    using System;
    using System.IO;

    using Sitecore.Configuration;
    using Sitecore.Diagnostics;
    using Sitecore.Pipelines.GetAboutInformation;

    public class GetVersion
    {
        public void Process(GetAboutInformationArgs args)
        {
            var fileName = Settings.DataFolder + @"\oc-version.txt";
            if (!File.Exists(fileName)) return;

            // TODO: Add a phone-home here?

            try
            {
                var version = File.ReadAllText(fileName).Trim();

                var loginPageText = string.Format(
                    "Officecore v{0}, build {1}",
                    this.GetAssemblyVersion(version),
                    this.GetBuildNumber(version));

                var branch = this.GetBranch(version);
                if (branch != "master")
                {
                    loginPageText = string.Format("{0}<br/>\r\n{1} {2}", loginPageText, branch, this.GetShortChangeset(this.GetChangeSet(version)));
                }

                args.LoginPageText = loginPageText;
            }
            catch (Exception ex)
            {
                Log.Error("Putting version info on login screen failed", ex, this);
            }
        }

        public string GetBranch(string version)
        {
            return version.Split(' ')[1];
        }

        public string GetChangeSet(string version)
        {
            return version.Split(' ')[2];
        }

        public string GetAssemblyVersion(string version)
        {
            var assemblyVersion = version.Split(' ')[0];
            var versionParts = assemblyVersion.Split('.');
            assemblyVersion = string.Format("{0}.{1}.{2}", versionParts[0], versionParts[1], versionParts[2]);

            if (assemblyVersion.EndsWith(".0"))
            {
                var lastPos = assemblyVersion.LastIndexOf('.');
                assemblyVersion = assemblyVersion.Substring(0, lastPos);
            }

            return assemblyVersion;
        }

        public string GetShortChangeset(string changeset)
        {
            return string.Format("{0}..{1}", changeset.Substring(0, 7), changeset.Substring(37));
        }

        public int GetBuildNumber(string version)
        {
            var assemblyVersion = version.Split(' ')[0];
            var versionParts = assemblyVersion.Split('.');
            return Convert.ToInt32(versionParts[3]);
        }
    }
}