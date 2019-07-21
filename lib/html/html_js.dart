const url =
    "https://ems.qa.tradingticket.com/oAuth/tradeItAuthScreen?oAuthTempToken=1efd7e61-850c-4ef6-bb76-5aa62ad67c9a";
const html2 = //
    '<html><body onload="init()">'
    '<iframe height="400px" width="330px" '
    'src="$url" name="iframe_a"></iframe>'
    '<script>'
    'function init() {console.log("on body load event I add event listener");'
    'window.addEventListener("message", receiveMessage, false);}'
    'function receiveMessage(event) {'
    'console.log("data: " + event.data + " origin: " + event.origin);}'
    '</script>'
    '</body></html>';
