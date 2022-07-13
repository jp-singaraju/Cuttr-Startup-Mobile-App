import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyHomeApp extends StatefulWidget {
  MyHomeApp({Key key}) : super(key: key);

  @override
  MyHomeAppState createState() => MyHomeAppState();
}

class MyHomeAppState extends State<MyHomeApp> {
  Future<bool> _onWillPop() async {
    return false;
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        systemNavigationBarColor: Colors.grey.withOpacity(.6),
        statusBarColor: Colors.grey.withOpacity(.6),
      ),
    );
    SystemChrome.setPreferredOrientations(
      [
        DeviceOrientation.portraitUp,
      ],
    );
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
      ),
    );
  }
}
