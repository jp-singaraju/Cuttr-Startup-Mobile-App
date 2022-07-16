import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

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
    // SystemChrome.setSystemUIOverlayStyle(
    //   SystemUiOverlayStyle(
    //     systemNavigationBarColor: Colors.grey.withOpacity(.6),
    //     statusBarColor: Colors.grey.withOpacity(.6),
    //   ),
    // );
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
        //All the home screen code
        body: Stack(
          alignment: Alignment.center,
          children: [
            //All of the blobs
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
            //Sign Up Page Box
            //TODO: Impliment Logic
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
              //Name
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
                  //Username Box
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
                          //Password Box
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
                          ), //TODO: Impliment Password Logic
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
                          //TODO: Login Authentication
                          //TODO: Login Business or Personal Authorization Required
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
                              //TODO: Buisiness or User Logic Handeled after Authentication
                              onTap: () {
                                Navigator.pushNamed(
                                  context,
                                  "welcome_page_route"
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  //TODO: Impliment simple static page, maybe some hyper links
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
                                  Navigator.pushNamed(
                                      context,
                                      // PageTransition(
                                      //   duration: Duration(milliseconds: 200),
                                      //   curve: Curves.decelerate,
                                      //   type: PageTransitionType.leftToRight,
                                      //   child: MySelectionPage(),
                                      // ),
                                      "selection_page_route");
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
