import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';


class OfficialWebViewScreen extends StatefulWidget {
  OfficialWebViewScreen({Key key}) : super(key: key);

  @override
  _OfficialWebViewScreenState createState() => _OfficialWebViewScreenState();
}

class _OfficialWebViewScreenState extends State<OfficialWebViewScreen> {
  static WebViewController _controller;

  var wv = WebView(
    initialUrl: 'https://yandex.ru',
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