import 'package:cuttr_application/values/values.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'account_page.dart';
import 'home_app_page.dart';
import 'lines_page.dart';
import 'membership_page.dart';

class MyWelcomePage extends StatefulWidget {
  MyWelcomePage({Key key}) : super(key: key);

  @override
  MyWelcomePageState createState() => MyWelcomePageState();
}

class MyWelcomePageState extends State<MyWelcomePage> {
  Future<bool> _willPopCallback() async {
    return false;
  }
  Widget current = MyHomeApp();
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
      child: CupertinoTabScaffold(
        tabBuilder: (ctx, index) {
          return WillPopScope(
            onWillPop: () async => false,
            child: CupertinoTabView(
              builder: (ctx) => callPage(index),
            ),
          );
        },
        tabBar: CupertinoTabBar(
          currentIndex: 0,
          backgroundColor: Colors.white,
          activeColor: AppColors.colors[_selectedTabIndex],
          items: [
            BottomNavigationBarItem(
                icon: Icon(
              Icons.apps,
            )),
            BottomNavigationBarItem(icon: Icon(Icons.assignment)),
            BottomNavigationBarItem(icon: Icon(Icons.school)),
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.settings)),
          ],
          onTap: (int index) async {
            setState(() {
              current = callPage(index);
              _selectedTabIndex = index;
            });
          },
        ),
        // bottomNavigationBar: BottomNavyBar(
        //   selectedIndex: _selectedTabIndex,
        //   showElevation: true,
        //   containerHeight: MediaQuery.of(context).size.height / 12.5,
        //   onItemSelected: (index) => setState(() {
        //     _selectedTabIndex = index;
        //   }),
        //   items: [
        //     BottomNavyBarItem(
        //       icon: Icon(Icons.apps),
        //       title: Text(
        //         'Home',
        //         style: GoogleFonts.oswald(
        //           textStyle: TextStyle(
        //               fontSize: 18.0,
        //               height: 1.2,
        //               color: Colors.cyanAccent[700]),
        //         ),
        //       ),
        //       activeColor: Colors.cyanAccent[700],
        //       textAlign: TextAlign.center,
        //     ),
        //     BottomNavyBarItem(
        //       icon: Icon(Icons.assignment),
        //       title: Text(
        //         'Grades',
        //         style: GoogleFonts.oswald(
        //           textStyle: TextStyle(
        //             fontSize: 18.0,
        //             height: 1.2,
        //             color: Colors.red[400],
        //           ),
        //         ),
        //       ),
        //       activeColor: Colors.red[400],
        //       textAlign: TextAlign.center,
        //     ),
        //     BottomNavyBarItem(
        //       icon: Icon(Icons.school),
        //       title: Text(
        //         'Extra',
        //         style: GoogleFonts.oswald(
        //           textStyle: TextStyle(
        //             fontSize: 18.0,
        //             height: 1.2,
        //             color: Colors.amber,
        //           ),
        //         ),
        //       ),
        //       activeColor: Colors.amber,
        //       textAlign: TextAlign.center,
        //     ),
        //     BottomNavyBarItem(
        //       icon: Icon(Icons.settings),
        //       title: Text(
        //         'Settings',
        //         style: GoogleFonts.oswald(
        //           textStyle: TextStyle(
        //             fontSize: 18.0,
        //             height: 1.2,
        //             color: Colors.blueGrey[800],
        //           ),
        //         ),
        //       ),
        //       activeColor: Colors.blueGrey[800],
        //       textAlign: TextAlign.center,
        //     ),
        //   ],
        // ),
      ),
    );
  }
}
