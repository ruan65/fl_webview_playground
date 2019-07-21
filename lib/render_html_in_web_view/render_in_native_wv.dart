import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:web_view_fl_native/data.dart';
import 'package:web_view_fl_native/got_token_screen.dart';
import 'package:web_view_fl_native/html/html_js.dart';

class RenderHtmlInNative extends StatefulWidget {
  @override
  _RenderHtmlInNativeState createState() => _RenderHtmlInNativeState();
}

class _RenderHtmlInNativeState extends State<RenderHtmlInNative> {
  final flutterWebviewPlugin = FlutterWebviewPlugin();

  BuildContext ctx;

  @override
  void initState() {
    flutterWebviewPlugin.onStateChanged.listen((state) {
      print(
          'onStateChanged: \n${state.url} \n type=${state.type}\n navigation type=${state.navigationType}');

      if (state.url.startsWith('http://gotthetokenhooray.com/?')) {
        TheData.data = Uri.decodeComponent(state.url);

        flutterWebviewPlugin.hide();

        Navigator.of(ctx).pop();

        print('pushing to .... contains hooray!!!!!!!!!');

        Navigator.push(
            context, MaterialPageRoute(builder: (ctx) => GotTokenScreen()));
      }
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ctx = context;
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
