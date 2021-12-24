// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
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
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  int _index = 0;
  List<Widget> screens = [
    Statistics(),
    History1(),
    Tracking(),
    Profile(),
    Setting(),
  ];

  void onItemTap(int index) {
    setState(() {
      _index = index;
      isExtend = index != 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    bool isDark = Provider.of<ThemeProvider>(context).getDarkMode;
    Color color = isDark ? Color(0xff0B0D1B).withOpacity(0.95) : Colors.white;

    Color color2 = isDark
        ? Color(0xff0B0D1B).withOpacity(0.95)
        : Colors.white.withOpacity(0.98);

    return Scaffold(
      extendBody: isExtend,
      backgroundColor: color,
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25.0),
          topRight: Radius.circular(25.0),
        ),
        child: CurvedNavigationBar(
          color: color2,
          buttonBackgroundColor: Colors.transparent,
          backgroundColor: Colors.transparent,
          key: _bottomNavigationKey,
          index: _index,
          items: [
            _index == 0
                ? ImageIcon(
                    AssetImage("assets/images/navigationBar/nav11.png"),
                    color: Color(0xffE8547C),
                  )
                : ImageIcon(AssetImage("assets/images/navigationBar/nav1.png")),
            _index == 1
                ? ImageIcon(
                    AssetImage("assets/images/navigationBar/nav22.png"),
                    color: Color(0xffE8547C),
                  )
                : ImageIcon(AssetImage("assets/images/navigationBar/nav2.png")),
            _index == 2
                ? ImageIcon(
                    AssetImage("assets/images/navigationBar/nav33.png"),
                    color: Color(0xffE8547C),
                  )
                : ImageIcon(AssetImage("assets/images/navigationBar/nav3.png")),
            _index == 3
                ? ImageIcon(
                    AssetImage("assets/images/navigationBar/nav44.png"),
                    color: Color(0xffE8547C),
                  )
                : ImageIcon(AssetImage("assets/images/navigationBar/nav4.png")),
            _index == 4
                ? ImageIcon(
                    AssetImage("assets/images/navigationBar/nav55.png"),
                    color: Color(0xffE8547C),
                  )
                : ImageIcon(AssetImage("assets/images/navigationBar/nav5.png")),
          ],
          onTap: (index) => setState(() {
            onItemTap(index);
          }),
        ),
      ),
      body: screens[_index],
    );
  }
}
