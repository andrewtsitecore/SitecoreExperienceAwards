namespace Officecore.Website.code.Helpers
{
    using Sitecore.Globalization;

    public static class DictionaryHelper
    {
        /// <summary>
        /// Get the value of a key
        /// </summary>
        /// <param name="key">The key to look for in the Sitecore dictionary</param>
        /// <returns>The phrase if the key is found, else the key.</returns>
        public static string GetText(string key)
        {
            var value = string.Empty;
            if (!string.IsNullOrWhiteSpace(Translate.Text(key)))
            {
                value = Translate.Text(key);
            }
            else
            {
                value = key;
            }

            return value;
        }
    }
}