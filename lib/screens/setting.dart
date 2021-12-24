// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:work_app/providers/theme_provider.dart';
import 'package:work_app/widgets/setting/setting_card.dart';

class Setting extends StatelessWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isDark = Provider.of<ThemeProvider>(context).getDarkMode;

    return Scaffold(
      backgroundColor:
          isDark ? Color(0xff0B0D1B) : Colors.black.withOpacity(0.01),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 50),
                Center(
                  child: Text(
                    'Settings',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 24),
                  ),
                ),
                SizedBox(height: 50),
              ],
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/setting/back.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Stack(
                children: [
                  ClipRRect(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 50.0, sigmaY: 50.0),
                      child: Container(
                        color: isDark
                            ? Color(0xff0B0D1B).withOpacity(0.7)
                            : Colors.white.withOpacity(0.8),
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Account',
                              style: TextStyle(
                                color: Color(0xff818496),
                                fontSize: 14,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                            SizedBox(height: 12),
                            Container(
                              decoration: BoxDecoration(
                                color: isDark
                                    ? Color(0xff707070).withOpacity(0.1)
                                    : Colors.white.withOpacity(0.9),
                                borderRadius: BorderRadius.circular(24),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 17.0, vertical: 20),
                                child: Column(
                                  children: [
                                    SettingCard(
                                      title: 'Current Subscription',
                                      img: 'subscription',
                                      subTitle: 'Free',
                                      imgw: 20,
                                      imgh: 20,
                                      color: Color(0xffE8547C).withOpacity(0.1),
                                    ),
                                    SizedBox(height: 13.5),
                                    HorizontalLine(),
                                    SizedBox(height: 15.5),
                                    SettingCard(
                                      title: 'Restore Purchase',
                                      img: 'restore',
                                      imgw: 19.03,
                                      imgh: 19.03,
                                      color: Color(0xff45E494).withOpacity(0.1),
                                    ),
                                    SizedBox(height: 13.5),
                                    HorizontalLine(),
                                    SizedBox(height: 15.5),
                                    SettingCard(
                                      title: 'Import Activities',
                                      img: 'import',
                                      imgw: 20,
                                      imgh: 20,
                                      color: Color(0xff60EEFB).withOpacity(0.1),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 24),
                            Text(
                              'General',
                              style: TextStyle(
                                color: Color(0xff818496),
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(height: 12),
                            Container(
                              decoration: BoxDecoration(
                                color: isDark
                                    ? Color(0xff707070).withOpacity(0.1)
                                    : Colors.white.withOpacity(0.9),
                                borderRadius: BorderRadius.circular(24),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 17.0, vertical: 20),
                                child: Column(
                                  children: [
                                    SettingCard(
                                      title: 'Account Setting',
                                      img: 'account',
                                      imgw: 15.24,
                                      imgh: 17.06,
                                      color: Color(0xff60EEFB).withOpacity(0.1),
                                    ),
                                    SizedBox(height: 13.5),
                                    HorizontalLine(),
                                    SizedBox(height: 15.5),
                                    SettingCard(
                                      title: 'Notifications',
                                      img: 'notification',
                                      imgw: 15.45,
                                      imgh: 19.97,
                                      color: Color(0xffE8547C).withOpacity(0.1),
                                    ),
                                    SizedBox(height: 13.5),
                                    HorizontalLine(),
                                    SizedBox(height: 15.5),
                                    InkWell(
                                      onTap: () {
                                        Provider.of<ThemeProvider>(context,
                                                listen: false)
                                            .toggleTheme(!isDark);
                                      },
                                      child: SettingCard(
                                        title: 'Themes',
                                        subtitle2: isDark ? 'Dark' : 'Light',
                                        img: 'theme',
                                        imgw: 17.78,
                                        imgh: 17.78,
                                        color:
                                            Color(0xffECAF1F).withOpacity(0.1),
                                      ),
                                    ),
                                    SizedBox(height: 13.5),
                                    HorizontalLine(),
                                    SizedBox(height: 15.5),
                                    SettingCard(
                                      title: 'Terms & Conditions',
                                      img: 'terms',
                                      imgw: 17.09,
                                      imgh: 19.87,
                                      color: Color(0xffE8547C).withOpacity(0.1),
                                    ),
                                    SizedBox(height: 13.5),
                                    HorizontalLine(),
                                    SizedBox(height: 15.5),
                                    SettingCard(
                                      title: 'Help & Support',
                                      img: 'help',
                                      imgw: 20,
                                      imgh: 20,
                                      color: Color(0xff45E494).withOpacity(0.1),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 100),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Container(height: 100),
        ],
      ),
    );
  }
}

class HorizontalLine extends StatelessWidget {
  const HorizontalLine({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 17),
      color: Color(0xff707070).withOpacity(0.1),
      height: 1,
    );
  }
}
