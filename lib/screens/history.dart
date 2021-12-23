// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:work_app/providers/theme_provider.dart';
import 'package:work_app/widgets/history/history_card.dart';

class History1 extends StatelessWidget {
  const History1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    bool isDark = Provider.of<ThemeProvider>(context).getDarkMode;
    String img = isDark ? '1' : '11';

    return Scaffold(
      backgroundColor: isDark ? Color(0xff121322) : Colors.white,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/history/back$img.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: 64,
                    height: 64,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/history/back2.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 7,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(42),
                  topLeft: Radius.circular(42),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/history/back3.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(42),
                          topLeft: Radius.circular(42),
                        ),
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 50.0, sigmaY: 50.0),
                          child: Container(
                            color: isDark
                                ? Color(0xff121322).withOpacity(0.7)
                                : Colors.white.withOpacity(0.4),
                          ),
                        ),
                      ),
                      SingleChildScrollView(
                        physics: BouncingScrollPhysics(),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 14.8),
                              Center(
                                child: Container(
                                  color: Color(0xff707070).withOpacity(0.2),
                                  height: 2,
                                  width: 86,
                                ),
                              ),
                              SizedBox(height: 24.2),
                              Text(
                                'Track History',
                                style: TextStyle(
                                  color: isDark
                                      ? Color(0xffffffff)
                                      : Color(0xff000000),
                                  fontSize: 24,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(height: 7),
                              Text(
                                'You have total 11 activities ',
                                style: TextStyle(
                                  color: Color(0xff818496),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w200,
                                ),
                              ),
                              SizedBox(height: 22),
                              HistoryCard(
                                title: 'Evening Jog',
                                subTitle: 'Run for 2.5 Km',
                                date: '05 Jan 2021',
                                img: 'run',
                                imgw: 30.08,
                                imgh: 30.55,
                                color: Color(0xff60EEFB).withOpacity(0.1),
                              ),
                              SizedBox(height: 16),
                              HistoryCard(
                                title: 'Morning Walk',
                                subTitle: 'Walk for 2.5 Km',
                                date: '05 Jan 2021',
                                img: 'stand',
                                imgw: 16.23,
                                imgh: 30.48,
                                color: Color(0xffE8547C).withOpacity(0.1),
                              ),
                              SizedBox(height: 16),
                              HistoryCard(
                                title: 'Cycling',
                                subTitle: 'Distance for 2.5 Km',
                                date: '05 Jan 2021',
                                img: 'ride',
                                imgw: 55,
                                imgh: 55,
                                color: Color(0xffECAF1F).withOpacity(0.1),
                              ),
                              SizedBox(height: 16),
                              HistoryCard(
                                title: 'Morning Jog',
                                subTitle: 'Run for 2.5 Km',
                                date: '05 Jan 2021',
                                img: 'run',
                                imgw: 30.08,
                                imgh: 30.55,
                                color: Color(0xff60EEFB).withOpacity(0.1),
                              ),
                              SizedBox(height: 116),
                            ],
                          ),
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
    );
  }
}
