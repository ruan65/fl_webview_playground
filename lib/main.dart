import 'package:flutter/material.dart';
import 'package:web_view_fl_native/community_web_view_screen.dart';
import 'package:web_view_fl_native/oficial_web_view_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WV',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Builder(
        builder: (context) => Scaffold(
          appBar: AppBar(
            title: Text('Main'),
          ),
          body: Center(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30.0),
                  child: RaisedButton(
                    child: Text('Native web view'),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => OfficialWebViewScreen()));
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30.0),
                  child: RaisedButton(
                    child: Text('Community web view'),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CommunityWebViewScreen()));
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
