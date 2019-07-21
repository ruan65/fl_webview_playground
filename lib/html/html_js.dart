const url =
    "https://ems.qa.tradingticket.com/oAuth/tradeItAuthScreen?oAuthTempToken=8c146313-9274-40e6-a3fa-d4af27c24d18";


const html2 = //
    '<html><body onload="init()">'
    '<iframe height="400px" width="330px" '
    'src="$url" name="iframe_a"></iframe>'
    '<script>'
    'function init() {console.log("on body load event I add event listener");'
    'window.addEventListener("message", receiveMessage, false);}'
    'function receiveMessage(event) {'
    'console.log("data: " + event.data + " origin: " + event.origin);'
    'if (event.origin == "https://www.trade.it") {'
    'window.location.href = "http://www.w3schools.com";}'
    '}'
    '</script>'
    '</body></html>';
