namespace Officecore.Website.code.Helpers
{
    using TweetSharp;

    public static class TwitterHelper
    {
        public static TwitterService GetAuthenticatedService()
        {
            var service = new TwitterService("pNmRQUyXvvX9GThWCb6zZxsSr", "RLt2DNkC71UqKKHN0war9rnj38PKOkpYrNFgFdZP0ydqozPVox");
            service.AuthenticateWith("39466888-4adiqdtDkTlnt50uwH4gP8joKVbJphS4ydgqVMABa", "6vyVxA2aPR93gd2TtiiAJGkvGZYpcs63FXl861jmCUyjl");

            return service;
        }
    }
}