// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:work_app/providers/theme_provider.dart';
import 'package:work_app/screens/history.dart';
import 'package:work_app/screens/profile.dart';
import 'package:work_app/screens/setting.dart';
import 'package:work_app/screens/statistics.dart';
import 'package:work_app/screens/tracking.dart';

bool isExtend = false;

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _currentIndex = 0;
  List<Widget> screens = [
    Statistics(),
    History1(),
    Tracking(),
    Profile(),
    Setting(),
  ];

  void onItemTap(int index) {
    setState(() {
      _currentIndex = index;
      isExtend = index != 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    bool isDark = Provider.of<ThemeProvider>(context).getDarkMode;

    return Scaffold(
      extendBody: isExtend,
      backgroundColor: isDark ? Color(0xff0B0D1B) : Colors.white,
      body: screens[_currentIndex],
      bottomNavigationBar: Container(
        height: 84,
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(47.0),
            topRight: Radius.circular(47.0),
          ),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            unselectedFontSize: 0.0,
            selectedFontSize: 0.0,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            backgroundColor: isDark ? Color(0xff0B0D1B) : Colors.white,
            selectedIconTheme: IconThemeData(color: Color(0xffE8547C)),
            unselectedIconTheme: IconThemeData(
              color: Color(0xff818496).withOpacity(0.7),
            ),
            onTap: (index) => setState(() {
              onItemTap(index);
            }),
            currentIndex: _currentIndex,
            items: [
              BottomNavigationBarItem(
                icon: ImageIcon(
                  _currentIndex == 0
                      ? AssetImage("assets/images/navigationBar/nav11.png")
                      : AssetImage("assets/images/navigationBar/nav1.png"),
                ),
                label: 'Statistics',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  _currentIndex == 1
                      ? AssetImage("assets/images/navigationBar/nav22.png")
                      : AssetImage("assets/images/navigationBar/nav2.png"),
                ),
                label: 'History',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  _currentIndex == 2
                      ? AssetImage("assets/images/navigationBar/nav33.png")
                      : AssetImage("assets/images/navigationBar/nav3.png"),
                ),
                label: 'Tracking',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  _currentIndex == 3
                      ? AssetImage("assets/images/navigationBar/nav44.png")
                      : AssetImage("assets/images/navigationBar/nav4.png"),
                ),
                label: 'Profile',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  _currentIndex == 4
                      ? AssetImage("assets/images/navigationBar/nav55.png")
                      : AssetImage("assets/images/navigationBar/nav5.png"),
                ),
                label: 'Settings',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
