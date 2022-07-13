import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyMembershipPage extends StatefulWidget {
  MyMembershipPage({Key key}) : super(key: key);

  @override
  MyMembershipPageState createState() => MyMembershipPageState();
}

class MyMembershipPageState extends State<MyMembershipPage> {
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
