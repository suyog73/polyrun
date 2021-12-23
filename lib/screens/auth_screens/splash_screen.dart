// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:async';
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'package:work_app/helpers/constants.dart';
import 'package:work_app/providers/theme_provider.dart';

import 'login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 3),
      () => Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (BuildContext context) => LoginScreen()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // bool isDark = MediaQuery.of(context).platformBrightness != Brightness.dark;

    bool isDark = Provider.of<ThemeProvider>(context).getDarkMode;

    Color color = isDark
        ? Color(0xff0B0D1B).withOpacity(0.7)
        : Colors.white.withOpacity(0.1);

    return Scaffold(
      // backgroundColor: Colors.white,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/auth/splashback.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 50.0, sigmaY: 50.0),
                child: Container(
                    // color: color,
                    ),
              ),
            ),
            isDark
                ? Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/auth/splashback2.png'),
                        fit: BoxFit.cover,
                      ),
                      color: color,
                    ),
                    child: SplashTp(),
                  )
                : SplashTp(),
          ],
        ),
      ),
    );
  }
}

class SplashTp extends StatelessWidget {
  const SplashTp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Hero(
            tag: kHeroTag,
            child: Image(
              image: AssetImage('assets/images/auth/logo.png'),
              width: 100,
              height: 130,
            ),
          ),
          SizedBox(height: 19),
          Text(
            'Polyrun',
            style: TextStyle(
              color: Color(0xffE8547C),
              fontSize: 24,
              fontWeight: FontWeight.w500,
            ),
          )
        ],
      ),
    );
  }
}
