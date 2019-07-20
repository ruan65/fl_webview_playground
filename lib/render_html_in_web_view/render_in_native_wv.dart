import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
//import 'package:web_view_fl_native/my_web_view/webview_scaffold.dart';

const html = //
    '<html><body>'
    '<h1>hello world</h1>'
    '<p>Paragraph</p>'
    '<button onclick="myFunction()">Try it</button>'
    '<script>'
    'function myFunction() {'
    'alert("Hello! I am an alert box!");}'
    '</script>'
    '</body></html>';

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
            appBar: AppBar(),
            withJavascript: true,
            url: Uri.dataFromString(
              html,
              mimeType: 'text/html',
            ).toString()));
  }
}
