import 'package:flutter/material.dart';
import 'package:web_view_fl_native/my_web_view/webview_scaffold.dart';

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
        appBar: AppBar(),
        body: WebviewScaffold(
            url: new Uri.dataFromString(
                '<html><body>hello world</body></html>',
                    mimeType: 'text/html')
                .toString()));
  }
}
