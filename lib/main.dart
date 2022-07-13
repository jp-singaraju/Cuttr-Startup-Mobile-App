import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:page_transition/page_transition.dart';
import 'package:flutter/gestures.dart';
import 'dart:async';
import 'package:flutter/services.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'home_page.dart';
import 'lines_page.dart';
import 'membership_page.dart';
import 'account_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cuttr',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Cuttr Application'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
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
        backgroundColor: Colors.white,
        body: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.only(top: 50, left: 10),
              child: Container(
                width: 188,
                height: 188,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(
                      'assets/images/orange_blob.png',
                    ),
                  ),
                ),
              ),
            ),
            Container(
              alignment: Alignment.topRight,
              padding: EdgeInsets.only(right: 5, top: 50),
              child: Container(
                width: 168,
                height: 168,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(
                      'assets/images/yellow_blob.png',
                    ),
                  ),
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 5, bottom: 10),
              child: Container(
                width: 188,
                height: 218,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(
                      'assets/images/yellow_blob.png',
                    ),
                  ),
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerRight,
              padding: EdgeInsets.only(right: 5),
              child: Container(
                width: 188,
                height: 188,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(
                      'assets/images/orange_blob.png',
                    ),
                  ),
                ),
              ),
            ),
            Container(
              alignment: Alignment.bottomLeft,
              padding: EdgeInsets.only(bottom: 30, left: 5),
              child: Container(
                width: 208,
                height: 208,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(
                      'assets/images/orange_blob.png',
                    ),
                  ),
                ),
              ),
            ),
            Container(
              alignment: Alignment.bottomRight,
              padding: EdgeInsets.only(right: 10, bottom: 40),
              child: Container(
                width: 168,
                height: 188,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(
                      'assets/images/yellow_blob.png',
                    ),
                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.97),
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                ),
                border: Border.all(color: Colors.black),
              ),
              width: MediaQuery.of(context).size.width * .8,
              height: MediaQuery.of(context).size.height * .8,
              child: Column(
                children: [
                  Expanded(
                    flex: 0,
                    child: Container(
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.only(top: 20, left: 20),
                      child: RichText(
                        text: TextSpan(
                          text: 'Cuttr',
                          style: GoogleFonts.secularOne(
                            fontSize: 70,
                            color: Colors.black,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: '.',
                              style: GoogleFonts.secularOne(
                                fontSize: 70,
                                color: Colors.yellow[700],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                                left: 10, right: 10, bottom: 10),
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(15),
                                  ),
                                ),
                                labelText: 'Username',
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsets.only(left: 10, right: 10, top: 10),
                            child: TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(15),
                                  ),
                                ),
                                labelText: 'Password',
                              ),
                            ),
                          ),
                          Container(
                            alignment: Alignment.centerRight,
                            padding:
                                EdgeInsets.only(left: 10, right: 10, top: 20),
                            child: RichText(
                              text: TextSpan(
                                text: 'Forgot Password?',
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    print("Forgot Password...");
                                  },
                                style: GoogleFonts.merriweatherSans(
                                  fontSize: 16,
                                  color: Colors.blue,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            padding: EdgeInsets.only(top: 40),
                            child: InkWell(
                              child: Container(
                                padding: EdgeInsets.only(
                                    left: 50, right: 50, top: 12, bottom: 12),
                                decoration: BoxDecoration(
                                  color: Colors.yellow[700],
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(20),
                                  ),
                                ),
                                child: AutoSizeText(
                                  'Login',
                                  minFontSize: 20,
                                  style: GoogleFonts.merriweatherSans(
                                    backgroundColor: Colors.yellow[700],
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  PageTransition(
                                    duration: Duration(milliseconds: 200),
                                    curve: Curves.decelerate,
                                    type: PageTransitionType.leftToRight,
                                    child: MyWelcomePage(),
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.bottomCenter,
                    padding: EdgeInsets.only(bottom: 25),
                    child: RichText(
                      text: TextSpan(
                        text: 'Terms and Services',
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            print("Terms and Services...");
                          },
                        style: GoogleFonts.merriweatherSans(
                          fontSize: 16,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 0,
                    child: Container(
                      alignment: Alignment.bottomCenter,
                      padding: EdgeInsets.only(left: 10, right: 10, bottom: 20),
                      child: RichText(
                        text: TextSpan(
                          text: 'Don\'t have an account? ',
                          style: GoogleFonts.merriweatherSans(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'Sign Up',
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.push(
                                    context,
                                    PageTransition(
                                      duration: Duration(milliseconds: 200),
                                      curve: Curves.decelerate,
                                      type: PageTransitionType.leftToRight,
                                      child: MySelectionPage(),
                                    ),
                                  );
                                },
                              style: GoogleFonts.merriweatherSans(
                                fontSize: 16,
                                color: Colors.blue,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MySelectionPage extends StatefulWidget {
  MySelectionPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  MySelectionPageState createState() => MySelectionPageState();
}

class MySelectionPageState extends State<MySelectionPage> {
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
        backgroundColor: Colors.white,
        body: Container(
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                alignment: Alignment.bottomLeft,
                padding: EdgeInsets.only(top: 2),
                child: IconButton(
                  icon: Icon(
                    Icons.keyboard_backspace,
                    size: 30,
                  ),
                  tooltip: 'Back',
                  onPressed: () {
                    Navigator.push(
                      context,
                      PageTransition(
                        duration: Duration(milliseconds: 200),
                        curve: Curves.decelerate,
                        type: PageTransitionType.rightToLeft,
                        child: MyHomePage(),
                      ),
                    );
                  },
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                padding: EdgeInsets.only(top: 50, left: 10),
                child: Container(
                  width: 188,
                  height: 188,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(
                        'assets/images/orange_blob.png',
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.topRight,
                padding: EdgeInsets.only(right: 5, top: 50),
                child: Container(
                  width: 168,
                  height: 168,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(
                        'assets/images/yellow_blob.png',
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(left: 5, bottom: 10),
                child: Container(
                  width: 188,
                  height: 218,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(
                        'assets/images/yellow_blob.png',
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.centerRight,
                padding: EdgeInsets.only(right: 5),
                child: Container(
                  width: 188,
                  height: 188,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(
                        'assets/images/orange_blob.png',
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.bottomLeft,
                padding: EdgeInsets.only(bottom: 30, left: 5),
                child: Container(
                  width: 208,
                  height: 208,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(
                        'assets/images/orange_blob.png',
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.bottomRight,
                padding: EdgeInsets.only(right: 10, bottom: 40),
                child: Container(
                  width: 168,
                  height: 188,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(
                        'assets/images/yellow_blob.png',
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.97),
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                  border: Border.all(color: Colors.black),
                ),
                width: MediaQuery.of(context).size.width * .8,
                height: MediaQuery.of(context).size.height * .8,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      padding: EdgeInsets.only(top: 20, left: 20),
                      child: RichText(
                        text: TextSpan(
                          text: 'Cuttr',
                          style: GoogleFonts.secularOne(
                            fontSize: 70,
                            color: Colors.black,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: '.',
                              style: GoogleFonts.secularOne(
                                fontSize: 70,
                                color: Colors.redAccent[100],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          ElevatedButton.icon(
                            onPressed: () {
                              Navigator.push(
                                context,
                                PageTransition(
                                  duration: Duration(milliseconds: 200),
                                  curve: Curves.decelerate,
                                  type: PageTransitionType.leftToRight,
                                  child: MyBusinessSignupPage(),
                                ),
                              );
                            },
                            icon: Icon(Icons.business),
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.all(7),
                              primary: Colors.redAccent[100],
                              onPrimary: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            label: AutoSizeText(
                              'business',
                              minFontSize: 25,
                              style: GoogleFonts.merriweatherSans(
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10, bottom: 10),
                          ),
                          ElevatedButton.icon(
                            onPressed: () {
                              Navigator.push(
                                context,
                                PageTransition(
                                  duration: Duration(milliseconds: 200),
                                  curve: Curves.decelerate,
                                  type: PageTransitionType.leftToRight,
                                  child: MyPersonSignupPage(),
                                ),
                              );
                            },
                            icon: Icon(Icons.person),
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.all(7),
                              primary: Colors.redAccent[100],
                              onPrimary: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            label: AutoSizeText(
                              'personal',
                              minFontSize: 25,
                              style: GoogleFonts.merriweatherSans(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(bottom: 25),
                      alignment: Alignment.bottomCenter,
                      child: AutoSizeText(
                        '',
                        minFontSize: 15,
                        style: GoogleFonts.merriweatherSans(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyBusinessSignupPage extends StatefulWidget {
  MyBusinessSignupPage({Key key}) : super(key: key);

  @override
  MyBusinessSignupPageState createState() => MyBusinessSignupPageState();
}

class MyBusinessSignupPageState extends State<MyBusinessSignupPage> {
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
        backgroundColor: Colors.white,
        body: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              alignment: Alignment.bottomLeft,
              padding: EdgeInsets.only(top: 2),
              child: IconButton(
                icon: Icon(
                  Icons.keyboard_backspace,
                  size: 30,
                ),
                tooltip: 'Back',
                onPressed: () {
                  Navigator.push(
                    context,
                    PageTransition(
                      duration: Duration(milliseconds: 200),
                      curve: Curves.decelerate,
                      type: PageTransitionType.rightToLeft,
                      child: MySelectionPage(),
                    ),
                  );
                },
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.only(top: 50, left: 10),
              child: Container(
                width: 188,
                height: 188,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(
                      'assets/images/orange_blob.png',
                    ),
                  ),
                ),
              ),
            ),
            Container(
              alignment: Alignment.topRight,
              padding: EdgeInsets.only(right: 5, top: 50),
              child: Container(
                width: 168,
                height: 168,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(
                      'assets/images/yellow_blob.png',
                    ),
                  ),
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 5, bottom: 10),
              child: Container(
                width: 188,
                height: 218,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(
                      'assets/images/yellow_blob.png',
                    ),
                  ),
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerRight,
              padding: EdgeInsets.only(right: 5),
              child: Container(
                width: 188,
                height: 188,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(
                      'assets/images/orange_blob.png',
                    ),
                  ),
                ),
              ),
            ),
            Container(
              alignment: Alignment.bottomLeft,
              padding: EdgeInsets.only(bottom: 30, left: 5),
              child: Container(
                width: 208,
                height: 208,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(
                      'assets/images/orange_blob.png',
                    ),
                  ),
                ),
              ),
            ),
            Container(
              alignment: Alignment.bottomRight,
              padding: EdgeInsets.only(right: 10, bottom: 40),
              child: Container(
                width: 168,
                height: 188,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(
                      'assets/images/yellow_blob.png',
                    ),
                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.97),
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                ),
                border: Border.all(color: Colors.black),
              ),
              width: MediaQuery.of(context).size.width * .8,
              height: MediaQuery.of(context).size.height * .8,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.only(top: 20, left: 20),
                    child: RichText(
                      text: TextSpan(
                        text: 'Cuttr',
                        style: GoogleFonts.secularOne(
                          fontSize: 70,
                          color: Colors.black,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: '.',
                            style: GoogleFonts.secularOne(
                              fontSize: 70,
                              color: Colors.yellow[700],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                                left: 10, right: 10, bottom: 15),
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(15),
                                  ),
                                ),
                                labelText: 'Company Registration ID',
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                left: 10, right: 10, bottom: 15),
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(15),
                                  ),
                                ),
                                labelText: 'Business Name',
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                left: 10, right: 10, bottom: 15),
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(15),
                                  ),
                                ),
                                labelText: 'Email Address',
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                left: 10, right: 10, bottom: 15),
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(15),
                                  ),
                                ),
                                labelText: 'Username',
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                left: 10, right: 10, bottom: 15),
                            child: TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(15),
                                  ),
                                ),
                                labelText: 'Password',
                              ),
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            padding: EdgeInsets.only(top: 25),
                            child: InkWell(
                              child: Container(
                                padding: EdgeInsets.only(
                                    left: 50, right: 50, top: 12, bottom: 12),
                                decoration: BoxDecoration(
                                  color: Colors.yellow[700],
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(20),
                                  ),
                                ),
                                child: AutoSizeText(
                                  'Signup',
                                  minFontSize: 20,
                                  style: GoogleFonts.merriweatherSans(
                                    backgroundColor: Colors.yellow[700],
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              onTap: () {
                                print("Signup...");
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyPersonSignupPage extends StatefulWidget {
  MyPersonSignupPage({Key key}) : super(key: key);

  @override
  MyPersonSignupPageState createState() => MyPersonSignupPageState();
}

class MyPersonSignupPageState extends State<MyPersonSignupPage> {
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
        backgroundColor: Colors.white,
        body: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              alignment: Alignment.bottomLeft,
              padding: EdgeInsets.only(top: 2),
              child: IconButton(
                icon: Icon(
                  Icons.keyboard_backspace,
                  size: 30,
                ),
                tooltip: 'Back',
                onPressed: () {
                  Navigator.push(
                    context,
                    PageTransition(
                      duration: Duration(milliseconds: 200),
                      curve: Curves.decelerate,
                      type: PageTransitionType.rightToLeft,
                      child: MySelectionPage(),
                    ),
                  );
                },
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.only(top: 50, left: 10),
              child: Container(
                width: 188,
                height: 188,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(
                      'assets/images/orange_blob.png',
                    ),
                  ),
                ),
              ),
            ),
            Container(
              alignment: Alignment.topRight,
              padding: EdgeInsets.only(right: 5, top: 50),
              child: Container(
                width: 168,
                height: 168,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(
                      'assets/images/yellow_blob.png',
                    ),
                  ),
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 5, bottom: 10),
              child: Container(
                width: 188,
                height: 218,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(
                      'assets/images/yellow_blob.png',
                    ),
                  ),
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerRight,
              padding: EdgeInsets.only(right: 5),
              child: Container(
                width: 188,
                height: 188,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(
                      'assets/images/orange_blob.png',
                    ),
                  ),
                ),
              ),
            ),
            Container(
              alignment: Alignment.bottomLeft,
              padding: EdgeInsets.only(bottom: 30, left: 5),
              child: Container(
                width: 208,
                height: 208,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(
                      'assets/images/orange_blob.png',
                    ),
                  ),
                ),
              ),
            ),
            Container(
              alignment: Alignment.bottomRight,
              padding: EdgeInsets.only(right: 10, bottom: 40),
              child: Container(
                width: 168,
                height: 188,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(
                      'assets/images/yellow_blob.png',
                    ),
                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.97),
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                ),
                border: Border.all(color: Colors.black),
              ),
              width: MediaQuery.of(context).size.width * .8,
              height: MediaQuery.of(context).size.height * .8,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.only(top: 20, left: 20),
                    child: RichText(
                      text: TextSpan(
                        text: 'Cuttr',
                        style: GoogleFonts.secularOne(
                          fontSize: 70,
                          color: Colors.black,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: '.',
                            style: GoogleFonts.secularOne(
                              fontSize: 70,
                              color: Colors.yellow[700],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                                left: 10, right: 10, bottom: 15),
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(15),
                                  ),
                                ),
                                labelText: 'Email Address',
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                left: 10, right: 10, bottom: 15),
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(15),
                                  ),
                                ),
                                labelText: 'Username',
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                left: 10, right: 10, bottom: 15),
                            child: TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(15),
                                  ),
                                ),
                                labelText: 'Password',
                              ),
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            padding: EdgeInsets.only(top: 40),
                            child: InkWell(
                              child: Container(
                                padding: EdgeInsets.only(
                                    left: 50, right: 50, top: 12, bottom: 12),
                                decoration: BoxDecoration(
                                  color: Colors.yellow[700],
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(20),
                                  ),
                                ),
                                child: AutoSizeText(
                                  'Signup',
                                  minFontSize: 20,
                                  style: GoogleFonts.merriweatherSans(
                                    backgroundColor: Colors.yellow[700],
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              onTap: () {
                                print("Signup...");
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyWelcomePage extends StatefulWidget {
  MyWelcomePage({Key key}) : super(key: key);

  @override
  MyWelcomePageState createState() => MyWelcomePageState();
}

class MyWelcomePageState extends State<MyWelcomePage> {
  Future<bool> _willPopCallback() async {
    return false;
  }

  int _selectedTabIndex = 0;

  Widget callPage(_selectedTabIndex) {
    switch (_selectedTabIndex) {
      case 1:
        return MyLinesPage();
      case 2:
        return MyMembershipPage();
      case 3:
        return MyAccountPage();
        break;
      default:
        return MyHomeApp();
    }
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
      onWillPop: _willPopCallback,
      child: Scaffold(
        body: callPage(_selectedTabIndex),
        bottomNavigationBar: BottomNavyBar(
          selectedIndex: _selectedTabIndex,
          showElevation: true,
          containerHeight: MediaQuery.of(context).size.height / 12.5,
          onItemSelected: (index) => setState(() {
            _selectedTabIndex = index;
          }),
          items: [
            BottomNavyBarItem(
              icon: Icon(Icons.apps),
              title: Text(
                'Home',
                style: GoogleFonts.oswald(
                  textStyle: TextStyle(
                      fontSize: 18.0,
                      height: 1.2,
                      color: Colors.cyanAccent[700]),
                ),
              ),
              activeColor: Colors.cyanAccent[700],
              textAlign: TextAlign.center,
            ),
            BottomNavyBarItem(
              icon: Icon(Icons.assignment),
              title: Text(
                'Grades',
                style: GoogleFonts.oswald(
                  textStyle: TextStyle(
                    fontSize: 18.0,
                    height: 1.2,
                    color: Colors.red[400],
                  ),
                ),
              ),
              activeColor: Colors.red[400],
              textAlign: TextAlign.center,
            ),
            BottomNavyBarItem(
              icon: Icon(Icons.school),
              title: Text(
                'Extra',
                style: GoogleFonts.oswald(
                  textStyle: TextStyle(
                    fontSize: 18.0,
                    height: 1.2,
                    color: Colors.amber,
                  ),
                ),
              ),
              activeColor: Colors.amber,
              textAlign: TextAlign.center,
            ),
            BottomNavyBarItem(
              icon: Icon(Icons.settings),
              title: Text(
                'Settings',
                style: GoogleFonts.oswald(
                  textStyle: TextStyle(
                    fontSize: 18.0,
                    height: 1.2,
                    color: Colors.blueGrey[800],
                  ),
                ),
              ),
              activeColor: Colors.blueGrey[800],
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
