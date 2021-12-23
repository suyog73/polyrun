// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:work_app/widgets/profile/profile_card.dart';
import 'package:work_app/widgets/profile/simple_card.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isDark = MediaQuery.of(context).platformBrightness == Brightness.dark;

    return Scaffold(
      backgroundColor: isDark ? Color(0xff0B0D1B) : Colors.white,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/profile/back.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            ClipRRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 100.0, sigmaY: 100.0),
                child: Container(
                  color: isDark
                      ? Color(0xff0B0D1B).withOpacity(0.6)
                      : Colors.white.withOpacity(0.4),
                ),
              ),
            ),
            SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  children: [
                    SizedBox(height: 50),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: Stack(
                        alignment: Alignment.topCenter,
                        children: [
                          Column(
                            children: [
                              Stack(
                                children: [
                                  Image(
                                    image: AssetImage(
                                        'assets/images/profile/profile_picture.png'),
                                    width: 100,
                                    height: 100,
                                  ),
                                  Positioned(
                                    bottom: 8,
                                    right: 1,
                                    child: Image(
                                      image: AssetImage(
                                          'assets/images/profile/rank.png'),
                                      height: 22,
                                      width: 22,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 14),
                              Text(
                                'Mark Hemlin',
                                style: TextStyle(
                                  fontSize: 21,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(height: 4),
                              Text(
                                'Level 1',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff60EEFB),
                                ),
                              ),
                            ],
                          ),
                          Positioned(
                            right: 0,
                            child: Text(
                              'Edit',
                              style: TextStyle(
                                color: Color(0xffE8547C),
                                fontSize: 14,
                                fontWeight: FontWeight.w200,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 22),
                    ProfileCard(
                      title: 'Wallet Address',
                      subTitle: 'Nano_1mx958f8df58f4gdf787d7f4g4-',
                      img: 'wallet',
                    ),
                    SizedBox(height: 16),
                    Container(
                      decoration: BoxDecoration(
                        color: isDark
                            ? Color(0xff707070).withOpacity(0.1)
                            : Colors.white.withOpacity(0.9),
                        borderRadius: BorderRadius.circular(24),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 17),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Personal bets',
                                  style: TextStyle(
                                    color: Color(0xff818496),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Icon(
                                  Icons.keyboard_arrow_right,
                                  color: Color(0xff818496),
                                ),
                              ],
                            ),
                            SizedBox(height: 18),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SimpleCard(
                                  img: 'foot',
                                  value: '5826',
                                  subValue: 'Steps',
                                  imgw: 11.87,
                                  imgh: 24.05,
                                ),
                                VerticalLine(),
                                SimpleCard(
                                  img: 'fire',
                                  value: '512',
                                  subValue: 'Calories',
                                  imgw: 17.09,
                                  imgh: 20.41,
                                ),
                                VerticalLine(),
                                SimpleCard(
                                  img: 'moon',
                                  value: '7.5 h',
                                  subValue: 'Sleep',
                                  imgw: 17.86,
                                  imgh: 17.77,
                                ),
                                VerticalLine(),
                                SimpleCard(
                                  img: 'meter',
                                  value: '1.60',
                                  subValue: 'km/h',
                                  imgw: 24.94,
                                  imgh: 16.33,
                                ),
                              ],
                            ),
                            SizedBox(height: 18),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SimpleCard(
                                  img: 'route',
                                  value: '4.45',
                                  value2: 'km',
                                  subValue: 'Distance',
                                  imgw: 23.38,
                                  imgh: 23.33,
                                ),
                                SizedBox(width: 25),
                                VerticalLine(),
                                SizedBox(width: 25),
                                SimpleCard(
                                  img: 'watch',
                                  value: '17',
                                  value2: 'min',
                                  subValue: 'Duration',
                                  imgw: 17.34,
                                  imgh: 20,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 16),
                    Container(
                      decoration: BoxDecoration(
                        color: isDark
                            ? Color(0xff707070).withOpacity(0.1)
                            : Colors.white.withOpacity(0.9),
                        borderRadius: BorderRadius.circular(24),
                      ),
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(20, 19, 20, 22.5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Badges',
                                  style: TextStyle(
                                    color: Color(0xff818496),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Icon(
                                  Icons.keyboard_arrow_right,
                                  color: Color(0xff818496),
                                ),
                              ],
                            ),
                            SizedBox(height: 12.5),
                            Row(
                              children: [
                                Column(
                                  children: [
                                    Image(
                                      image: AssetImage(
                                          'assets/images/profile/ride.png'),
                                      width: 51.48,
                                      height: 51.48,
                                    ),
                                    SizedBox(height: 5.5),
                                    Text(
                                      'Top Cycling',
                                      style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(width: 25),
                                Column(
                                  children: [
                                    Image(
                                      image: AssetImage(
                                          'assets/images/profile/shoe.png'),
                                      width: 51.48,
                                      height: 51.48,
                                    ),
                                    SizedBox(height: 5.5),
                                    Text(
                                      '5k Steps',
                                      style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(width: 25),
                                Column(
                                  children: [
                                    Image(
                                      image: AssetImage(
                                          'assets/images/profile/big_route.png'),
                                      width: 51.48,
                                      height: 51.48,
                                    ),
                                    SizedBox(height: 5.5),
                                    Text(
                                      '1k Distance',
                                      style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
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

class VerticalLine extends StatelessWidget {
  const VerticalLine({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 27,
      width: 2,
      color: Color(0xff707070).withOpacity(0.23),
    );
  }
}
