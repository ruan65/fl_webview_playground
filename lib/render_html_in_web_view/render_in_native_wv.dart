import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:web_view_fl_native/html/html_js.dart';

class RenderHtmlInNative extends StatefulWidget {
  @override
  _RenderHtmlInNativeState createState() => _RenderHtmlInNativeState();
}

class _RenderHtmlInNativeState extends State<RenderHtmlInNative> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: WebviewScaffold(
            appBar: AppBar(),
            withJavascript: true,
            url: Uri.dataFromString(
              html2,
              mimeType: 'text/html',
            ).toString()));
  }
}
