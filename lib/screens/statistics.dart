// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:work_app/providers/theme_provider.dart';
import 'package:work_app/widgets/statistics/big_icons.dart';
import 'package:work_app/widgets/statistics/graph_chart.dart';
import 'package:work_app/widgets/statistics/icon_back.dart';

class Statistics extends StatelessWidget {
  const Statistics({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isDark = Provider.of<ThemeProvider>(context).getDarkMode;

    Color color = isDark ? Color(0xff0B0D1B) : Colors.white;

    Color color2 = isDark
        ? Color(0xff0B0D1B).withOpacity(0.82)
        : Colors.white.withOpacity(0.4);

    return Scaffold(
      backgroundColor: color,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/statistics/statistics.png'),
          ),
        ),
        child: Stack(
          children: [
            ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 65.0, sigmaY: 65.0),
                child: Container(
                  color: color2,
                ),
              ),
            ),
            SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Padding(
                padding: const EdgeInsets.only(top: 59.0, left: 16, right: 16),
                child: Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Welcome',
                                  style: TextStyle(
                                      color: Color(0xff818496), fontSize: 14),
                                ),
                                SizedBox(height: 7),
                                Text(
                                  'Mark Hemlin',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 28),
                                ),
                                SizedBox(height: 9),
                                Text(
                                  'You have 3 daily tasks to complete today!',
                                  style: TextStyle(
                                      fontSize: 14, color: Color(0xff60EEFB)),
                                ),
                              ],
                            ),
                            IconBack(img: isDark ? 'light_icon' : 'dark_icon')
                          ],
                        ),
                        SizedBox(height: 29),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Daily Goals',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w600),
                            ),
                            Text(
                              'Add New',
                              style: TextStyle(
                                fontSize: 14,
                                color: Color(0xffE8547C),
                                fontWeight: FontWeight.w200,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 14),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            BigIcons(
                              icon: 'foot',
                              value: '5826',
                              subValue: 'Steps',
                              color: Color(0xff60EEFB).withOpacity(0.1),
                            ),
                            BigIcons(
                              icon: 'fire',
                              value: '512',
                              subValue: 'Calories',
                              color: Color(0xffE8547C).withOpacity(0.1),
                            ),
                            BigIcons(
                              icon: 'moon',
                              value: '7.5 h',
                              subValue: 'Sleep',
                              color: Color(0xffECAF1F).withOpacity(0.1),
                            ),
                          ],
                        ),
                        SizedBox(height: 24),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'My Activity',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  'Weekly',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w200,
                                    color: Color(0xff60EEFB),
                                  ),
                                ),
                                Icon(
                                  Icons.keyboard_arrow_down_outlined,
                                  color: Color(0xff818496),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 16),
                        Row(
                          children: [
                            Container(
                              alignment: Alignment.center,
                              width: 78,
                              height: 36,
                              decoration: BoxDecoration(
                                color: Color(0xff60EEFB).withOpacity(0.1),
                                borderRadius: BorderRadius.circular(17),
                              ),
                              child: Text(
                                'All',
                                style: TextStyle(
                                  color: Color(0xff60eefb),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            SizedBox(width: 27),
                            Text(
                              'Foot',
                              style: TextStyle(
                                color: Color(0xff818496),
                                fontSize: 14,
                                fontWeight: FontWeight.w200,
                              ),
                            ),
                            SizedBox(width: 27),
                            Text(
                              'Bike',
                              style: TextStyle(
                                color: Color(0xff818496),
                                fontSize: 14,
                                fontWeight: FontWeight.w200,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 26),
                        GraphChart(),
                        SizedBox(height: 25),
                        IntrinsicHeight(
                          child: Row(
                            // crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              BottomInfo(
                                color: Color(0xff60EEFB),
                                title: 'Av. Speed',
                                value: '1.5 Km',
                              ),
                              VerticalDivider(
                                color: Color(0xff707070),
                                indent: 16,
                              ),
                              BottomInfo(
                                color: Color(0xffE8547C),
                                title: 'Total Distance',
                                value: '14.22 Km',
                              ),
                              VerticalDivider(
                                color: Color(0xff707070),
                                indent: 16,
                              ),
                              BottomInfo(
                                color: Color(0xffECAF1F),
                                title: 'Calories',
                                value: '587',
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 50),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BottomInfo extends StatelessWidget {
  const BottomInfo({
    Key? key,
    required this.color,
    required this.title,
    required this.value,
  }) : super(key: key);

  final Color color;
  final String title, value;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: TextStyle(
            color: Color(0xff818496).withOpacity(0.7),
            fontSize: 12,
            fontWeight: FontWeight.w200,
          ),
        ),
        SizedBox(height: 4),
        Text(
          value,
          style: TextStyle(
            color: color,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        )
      ],
    );
  }
}
