import 'package:cuttr_application/pages/membership_page.dart';
import 'package:cuttr_application/pages/my_business_signup_page.dart';
import 'package:cuttr_application/pages/my_home_page.dart';
import 'package:cuttr_application/pages/my_person_signup_page.dart';
import 'package:cuttr_application/pages/my_selection_page.dart';
import 'package:cuttr_application/pages/my_welcome_page.dart';
import 'package:flutter/material.dart';

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
      routes: {
        "selection_page_route": (ctx) => MySelectionPage(),
        "membership_page_route": (ctx) => MyMembershipPage(),
        "personal_signup_route": (ctx) => MyPersonSignupPage(),
        "business_signup_route": (ctx) => MyBusinessSignupPage(),
        "welcome_page_route": (ctx) => MyWelcomePage(),
      },
    );
  }
}
