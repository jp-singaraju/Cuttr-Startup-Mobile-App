import 'package:cuttr_application/values/values.dart';
import 'package:flutter/cupertino.dart';
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

  TextEditingController _search = new TextEditingController();

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
            'Home',
            style: Styles.customTitleTextStyle(
              color: AppColors.colors[0],
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
              CupertinoSearchTextField(
                style: TextStyle(color: Colors.black),
                controller: _search,
                placeholder: "Search",
                onChanged: (val) {
                  //TODO: Modify List
                },
              ),
              //TODO: List View
            ],
          ),
        ),
      ),
    );
  }
}
