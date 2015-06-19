jQuery2(document).ready(function ($) {
    $('#social-stream').dcSocialStream({
        feeds: {
            twitter: {
                url: '/assets/CSS/rd/jquery-social-stream/twitter.php',
                id: 'scofficecore'
            },
            facebook: {
                id: '168247546646019',
                out: 'intro,thumb,text,user,share'
            },
            youtube: {
                id: 'SitecoreUKTV',
                thumb: '0'
            }
        },
        rotate: {
            delay: 0
        },
        twitterId: 'scofficecore',
        control: false,
        filter: true,
        wall: true,
        cache: false,
        max: 'limit',
        limit: 10,
        iconPath: '/assets/CSS/images/jquery-social-stream/dcsns-dark/',
        imagePath: '/assets/CSS/images/jquery-social-stream/dcsns-dark/'
    });
});