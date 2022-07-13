import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyLinesPage extends StatefulWidget {
  MyLinesPage({Key key}) : super(key: key);

  @override
  MyLinesPageState createState() => MyLinesPageState();
}

class MyLinesPageState extends State<MyLinesPage> {
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
