import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

const linkInitializationUrl = 'https://cdn.plaid.com/link/v2/stable/link.html'
    '?'
    'isWebview=true'
//    '&'
//    'isMobile=true'
    '&'
    'product=auth'
    '&'
    'apiVersion=v2'
    '&'
    'selectAccount=true'
    '&'
    'webhook=http%3A%2F%2Frequestb.in'
    '&'
    'clientName=Fl%20App'
    '&'
    'env=sandbox'
    '&'
    'key=c0d76b1e6d064e4744d986564f320e';
//    'key=151fc04397c77ecb9ce6b660624535';

class OfficialWebViewScreen extends StatefulWidget {
  OfficialWebViewScreen({Key key}) : super(key: key);

  @override
  _OfficialWebViewScreenState createState() => _OfficialWebViewScreenState();
}

class _OfficialWebViewScreenState extends State<OfficialWebViewScreen> {
  static WebViewController _controller;

  var wv = WebView(
    initialUrl: linkInitializationUrl,
    onWebViewCreated: (WebViewController wvc) async {
      _controller = wvc;

      var currentUrl = await _controller.currentUrl();

      print('current url: $currentUrl');
    },
  );

  @override
  Widget build(BuildContext context) {



    return Scaffold(
      appBar: AppBar(
        title: Text('Native'),
      ),
      body: wv,
    );
  }
}