import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

import 'my_business_signup_page.dart';
import 'my_home_page.dart';
import 'my_person_signup_page.dart';

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
        backgroundColor: Colors.white,
        // appBar: AppBar(
        //   elevation: 0,
        //   backgroundColor: Colors.transparent,
        //   leading: CupertinoButton(
        //     child: IconButton(
        //       icon: Icon(CupertinoIcons.back),
        //       onPressed: () {
        //         Navigator.pop(context);
        //       },
        //     ),
        //   ),
        // ),
        body: Container(
          child: Stack(
            alignment: Alignment.center,
            children: [
              // Container(
              //   alignment: Alignment.topLeft,
              //   padding: EdgeInsets.only(top: 2),
              //   child: IconButton(
              //     icon: Icon(
              //       Icons.keyboard_backspace,
              //       size: 30,
              //     ),
              //     tooltip: 'Back',
              //     onPressed: () {
              //       Navigator.push(
              //         context,
              //         PageTransition(
              //           duration: Duration(milliseconds: 200),
              //           curve: Curves.decelerate,
              //           type: PageTransitionType.rightToLeft,
              //           child: MyHomePage(),
              //         ),
              //       );
              //     },
              //   ),
              // ),
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
                              Navigator.pushNamed(
                                context,
                                "business_signup_route",
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
                              'Business',
                              minFontSize: 50,
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
                              Navigator.pushNamed(
                                  context, "personal_signup_route");
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
                              'Personal',
                              minFontSize: 50,
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
                              Navigator.pushNamed(
                                context,
                                "/",
                              );
                            },
                            icon: Icon(Icons.login),
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.all(7),
                              primary: Colors.redAccent[100],
                              onPrimary: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            label: AutoSizeText(
                              '  Log In  ',
                              minFontSize: 50,
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
