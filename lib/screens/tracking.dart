// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:work_app/widgets/tracking/big_icons2.dart';

class Tracking extends StatelessWidget {
  const Tracking({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isDark = MediaQuery.of(context).platformBrightness == Brightness.dark;
    String img = isDark ? '1' : '11';

    return Scaffold(
      backgroundColor:
          isDark ? Color(0xff121322).withOpacity(0.2) : Colors.white,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/tracking/back$img.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Expanded(
              flex: 4,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: 318,
                    height: 204,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/tracking/back2.png'),
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
                      image: AssetImage('assets/images/tracking/back3.png'),
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
                                ? Color(0xff121322).withOpacity(0.75)
                                : Colors.white.withOpacity(0.5),
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
                              SizedBox(height: 11.2),
                              Text(
                                'Going for a',
                                style: TextStyle(
                                  color: Color(0xff818496),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w200,
                                ),
                              ),
                              SizedBox(height: 18),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  BigIcons2(
                                    img: 'stand',
                                    value: 'Walk',
                                    color: Color(0xffE8547C),
                                    imgWidth: 24.79,
                                    imgHeight: 46.55,
                                  ),
                                  BigIcons2(
                                    img: 'run',
                                    value: 'Jog',
                                    color: Color(0xff707070).withOpacity(0.1),
                                    imgWidth: 36.83,
                                    imgHeight: 37.39,
                                  ),
                                  BigIcons2(
                                    img: 'ride',
                                    value: 'Ride',
                                    color: Color(0xff707070).withOpacity(0.1),
                                    imgWidth: 41.14,
                                    imgHeight: 36.32,
                                  ),
                                ],
                              ),
                              SizedBox(height: 34),
                              Center(
                                child: Text(
                                  '15:20',
                                  style: TextStyle(
                                    color: Color(0xff60EEFB),
                                    fontSize: 42,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                              ),
                              SizedBox(height: 11),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Current Pace',
                                    style: TextStyle(
                                      color: Color(0xff818496),
                                      fontSize: 14,
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    '6.50/Km',
                                    style: TextStyle(
                                      color: isDark
                                          ? Color(0xffffffff)
                                          : Color(0xffE8547C),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 37),
                              Center(
                                child: Image(
                                  image: AssetImage(
                                      'assets/images/tracking/record.png'),
                                  width: 164.39,
                                  height: 98,
                                ),
                              ),
                              SizedBox(height: 37),
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
