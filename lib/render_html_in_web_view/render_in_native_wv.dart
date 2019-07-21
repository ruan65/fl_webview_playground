import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:web_view_fl_native/html/html_js.dart';

class RenderHtmlInNative extends StatefulWidget {
  @override
  _RenderHtmlInNativeState createState() => _RenderHtmlInNativeState();
}

class _RenderHtmlInNativeState extends State<RenderHtmlInNative> {
  final flutterWebviewPlugin = FlutterWebviewPlugin();

  @override
  void initState() {
    flutterWebviewPlugin.onUrlChanged.listen((String url) {
      print('url changed: $url');
//      flutterWebviewPlugin.stopLoading();
    });

    flutterWebviewPlugin.onHttpError.listen((err) {
      print('wverr ${err.url}');
    });

    flutterWebviewPlugin.onStateChanged.listen((state) {
      print('onStateChanged: \n${state.url} \n type=${state.type}\n navigation type=${state.navigationType}');
    });

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
