// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:work_app/screens/history.dart';
import 'package:work_app/screens/profile.dart';
import 'package:work_app/screens/setting.dart';
import 'package:work_app/screens/statistics.dart';
import 'package:work_app/screens/tracking.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

int _currentIndex = 0;
final screens = [Statistics(), Tracking(), History(), Profile(), Setting()];

class _BottomNavigationState extends State<BottomNavigation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0B0D1B),
      body: screens[_currentIndex],
      bottomNavigationBar: Container(
        height: 84,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(47),
            topLeft: Radius.circular(47),
          ),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(47.0),
            topRight: Radius.circular(47.0),
          ),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            backgroundColor: Color(0xff707070).withOpacity(0.2),
            currentIndex: _currentIndex,
            selectedIconTheme: IconThemeData(color: Color(0xffE8547C)),
            unselectedIconTheme: IconThemeData(
              color: Color(0xff818496).withOpacity(0.7),
            ),
            onTap: (index) => setState(() => _currentIndex = index),
            items: [
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("assets/icons/nav1.png"),
                ),
                label: 'statistics',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("assets/icons/nav2.png"),
                ),
                label: 'tracking',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("assets/icons/nav3.png"),
                ),
                label: 'history',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("assets/icons/nav4.png"),
                ),
                label: 'profile',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("assets/icons/nav5.png"),
                ),
                label: 'settings',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
