import 'package:dance_flutter/HomePage1.dart';
import 'package:dance_flutter/ProfilePage.dart';
import 'package:dance_flutter/SearchPage.dart';
import 'package:dance_flutter/VideoPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  bool status = false;
  int _barindex = 0;
  final screen = [homePage(), SearchPage(), VideoPage(), ProfilePage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[_barindex],
      backgroundColor: Color.fromRGBO(16, 16, 16, 1),
      bottomNavigationBar: Container(
        //height: 85,
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: GNav(
          tabBackgroundColor: Colors.grey.shade800,
          padding: EdgeInsets.all(10),
          tabs: [
            GButton(
              iconActiveColor: Color.fromRGBO(250, 250, 250, 1),
              icon: CupertinoIcons.house,
              iconColor: Color.fromRGBO(250, 250, 250, 1),
              text: 'Home',
              gap: 10,
              textStyle: TextStyle(
                  color: Color.fromRGBO(250, 250, 250, 1),
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                  fontSize: 15),
            ),
            GButton(
              icon: CupertinoIcons.search,
              iconActiveColor: Color.fromRGBO(250, 250, 250, 1),
              iconColor: Color.fromRGBO(250, 250, 250, 1),
              text: 'Search',
              gap: 10,
              textStyle: TextStyle(
                  color: Color.fromRGBO(250, 250, 250, 1),
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                  fontSize: 15),
            ),
            GButton(
              icon: CupertinoIcons.play_circle,
              iconActiveColor: Color.fromRGBO(250, 250, 250, 1),
              iconColor: Color.fromRGBO(250, 250, 250, 1),
              text: 'Videos',
              gap: 10,
              textStyle: TextStyle(
                  color: Color.fromRGBO(250, 250, 250, 1),
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                  fontSize: 15),
            ),
            GButton(
              icon: CupertinoIcons.person,
              gap: 10,
              iconActiveColor: Color.fromRGBO(250, 250, 250, 1),
              iconColor: Color.fromRGBO(250, 250, 250, 1),
              text: 'Profile',
              textStyle: TextStyle(
                  color: Color.fromRGBO(250, 250, 250, 1),
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                  fontSize: 15),
            ),
          ],
          selectedIndex: _barindex,
          onTabChange: (index) {
            setState(() {
              _barindex = index;
            });
          },
        ),
      ),
    );
  }
}
