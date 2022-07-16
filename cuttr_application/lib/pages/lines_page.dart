import 'package:cuttr_application/values/values.dart';
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
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 5.0,
          centerTitle: true,
          title: Text(
            'Lines',
            style: Styles.customTitleTextStyle(
              color: AppColors.colors[1],
              fontWeight: FontWeight.w600,
              fontSize: Sizes.TEXT_SIZE_22,
            ),
          ),
          actions: [
            // IconButton(
            //   icon: Icon(CupertinoIcons.info),
            //   onPressed: () {},
            // ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              //TODO: List View
            ],
          ),
        ),
      ),
    );
  }
}
