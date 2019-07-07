import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';


const kAndroidUserAgent =
    'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Mobile Safari/537.36';

const linkInitializationUrl = 'https://cdn.plaid.com/link/v2/stable/link.html'
    '?'
    'isWebview=true'
    '&'
    'isMobile=true'
    '&'
    'product=auth'
    '&'
    'apiVersion=v2'
    '&'
    'selectAccount=true'
    '&'
    'webhook=http%3A%2F%2Frequestb.in'
    '&'
    'clientName=Test%20App'
    '&'
    'env=sandbox'
    '&'
//    'key=c0d76b1e6d064e4744d986564f320e';
    'key=151fc04397c77ecb9ce6b660624535';

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
    var wvs = WebviewScaffold(
      appBar: AppBar(
        title: Text('Community webview'),
      ),
      url: linkInitializationUrl,
      hidden: true,
      withJavascript: true,
      withLocalStorage: true,
      userAgent: kAndroidUserAgent,
      invalidUrlRegex: '^plaidlink',
    );


    return Scaffold(
      appBar: AppBar(),
      body: wvs,
    );
  }
}
