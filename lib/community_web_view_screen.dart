import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

String selectedUrl = 'https://flutter.io';

class CommunityWebViewScreen extends StatefulWidget {
  CommunityWebViewScreen({Key key}) : super(key: key);

  @override
  _CommunityWebViewScreenState createState() => _CommunityWebViewScreenState();
}

class _CommunityWebViewScreenState extends State<CommunityWebViewScreen> {

  final flutterWebviewPlugin = new FlutterWebviewPlugin();

  @override
  void initState() {
    flutterWebviewPlugin.onUrlChanged.listen((String url) {
      print('url changed: $url');
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var wvs = WebviewScaffold(
      appBar: AppBar(
        title: Text('Community webview'),
      ),
      url: selectedUrl,
      hidden: true,
    );


    return wvs;
  }
}
