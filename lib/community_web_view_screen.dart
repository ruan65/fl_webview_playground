import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

String selectedUrl = 'https://flutter.io';

class CommunityWebViewScreen extends StatefulWidget {
  CommunityWebViewScreen({Key key}) : super(key: key);

  @override
  _CommunityWebViewScreenState createState() => _CommunityWebViewScreenState();
}

class _CommunityWebViewScreenState extends State<CommunityWebViewScreen> {

  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      appBar: AppBar(
        title: Text('Community webview'),
      ),
      url: selectedUrl,
      hidden: false,
    );
  }
}
