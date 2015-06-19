namespace Officecore.Website.code.Extensions
{
    using System;
    using System.Collections.Generic;
    using System.Collections.Specialized;
    using System.Linq;
    using System.Web;
    using System.Web.SessionState;

    public static class Collections
    {
        public static List<KeyValuePair<string, string>> ToSerializable(this HttpCookieCollection collection)
        {
            return
                collection.AllKeys
                          .Select(x => new KeyValuePair<string, string>(x, collection[x].Value))
                          .ToList();
        }

        public static List<KeyValuePair<string, object>> ToSerializable(this HttpSessionState collection)
        {
            return (from string key in collection.Keys
                    select new KeyValuePair<string, object>(key, collection[key]))
                    .ToList();
        }

        public static List<KeyValuePair<string, string>> ToSerializable(this NameValueCollection collection)
        {
            return
                collection.AllKeys
                          .Select(x => new KeyValuePair<string, string>(x, collection[x]))
                          .ToList();
        }

        public static void Shuffle<T>(this IList<T> list)
        {
            var rng = new Random();
            var n = list.Count;
            while (n > 1)
            {
                n--;
                int k = rng.Next(n + 1);
                T value = list[k];
                list[k] = list[n];
                list[n] = value;
            }
        }

        public static List<T> TakeRandom<T>(this IList<T> list, int take)
        {
            var rng = new Random();

            var listSize = list.Count;
            if (take > list.Count)
            {
                take = list.Count;
            }

            var result = new List<T>();

            while (take > 0)
            {
                var k = rng.Next(listSize);

                result.Add(list[k]);
                list.RemoveAt(k);

                listSize--;
                take--;
            }

            return result;
        }
    }
}