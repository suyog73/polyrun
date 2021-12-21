// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:work_app/screens/login_screen.dart';
import 'package:work_app/widgets/auth_button.dart';
import 'package:work_app/widgets/input_fields.dart';
import 'package:work_app/widgets/social_media_images.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    bool isDark = MediaQuery.of(context).platformBrightness == Brightness.dark
        ? true
        : false;

    Color color = isDark
        ? Colors.black.withOpacity(0.75)
        : Colors.white.withOpacity(0.75);

    return Scaffold(
      backgroundColor: isDark ? Color(0xff0B0D1B) : Colors.white,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 51.0, left: 16),
              child: InkWell(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    PageTransition(
                      type: PageTransitionType.leftToRight,
                      child: LoginScreen(),
                    ),
                    // MaterialPageRoute(
                    //   builder: (context) => LoginScreen(),
                    // ),
                  );
                },
                child: Icon(
                  Icons.arrow_back,
                  color: isDark ? Colors.white : Colors.black,
                  size: 24,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                    image: AssetImage('assets/images/logo.png'),
                    width: 44.46,
                    height: 61.66,
                  ),
                  SizedBox(width: 5),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Polyrun',
                        style: TextStyle(
                          color: Color(0xffE8547C),
                          fontSize: 30,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 1.5),
                      Text(
                        'BETA',
                        style: TextStyle(
                          color: Color(0xff60EEFB),
                          fontSize: 10,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 46),
            ClipRRect(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(27),
                topLeft: Radius.circular(27),
              ),
              child: Container(
                height: 729,
                decoration: BoxDecoration(
                  color: isDark ? Color(0xff0B0D1B) : Colors.white,
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0.0, 1.0), //(x,y)
                      blurRadius: 5.0,
                    ),
                  ],
                  image: DecorationImage(
                    image: AssetImage('assets/images/signupback.png'),
                    fit: BoxFit.contain,
                  ),
                ),
                child: Stack(
                  children: [
                    ClipRect(
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 100.0, sigmaY: 100.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: isDark
                                ? Color(0xff121322).withOpacity(0.7)
                                : Colors.white.withOpacity(0.35),
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(27),
                              topLeft: Radius.circular(27),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Column(
                        children: [
                          SizedBox(height: 22),
                          Text(
                            'Sign Up',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: 14),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 25.0),
                            child: Text(
                              'Lorem ipsum dolor sit amet, construe sadistic elite, sed diam nonhuman usermod',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 12,
                                color: isDark
                                    ? Color(0xffAFB2C6).withOpacity(0.5)
                                    : Color(0xff818496),
                              ),
                            ),
                          ),
                          SizedBox(height: 30),
                          Form(
                            child: Column(
                              children: [
                                InputFields(
                                  hintText: 'Create Username',
                                  isDark: isDark,
                                ),
                                InputFields(
                                  hintText: 'Password',
                                  isDark: isDark,
                                ),
                                InputFields(
                                    hintText: 'Confirm Password',
                                    isDark: isDark),
                                SizedBox(height: 35),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'By Signing Up you agree to out ',
                                      style: TextStyle(
                                        color: Color(0xffafb2c6),
                                        fontSize: 12,
                                      ),
                                    ),
                                    Text(
                                      'Terms of use',
                                      style: TextStyle(
                                        color: Color(0xffE8547C),
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 56),
                                AuthButton(text: 'SIGN UP'),
                                SizedBox(height: 40),
                                Text(
                                  'Or sign Up with',
                                  style: TextStyle(
                                    color: isDark
                                        ? Color(0xffAFB2C6).withOpacity(0.5)
                                        : Color(0xff121322),
                                    fontSize: 12,
                                  ),
                                ),
                                SizedBox(height: 23),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    SocialMediaImages(
                                      img: 'facebook',
                                      width: 14.2,
                                      height: 26.91,
                                      isDark: isDark,
                                    ),
                                    SocialMediaImages(
                                      img: 'google',
                                      height: 23.32,
                                      isDark: isDark,
                                      width: 22.84,
                                    ),
                                    SocialMediaImages(
                                      img: 'twitter',
                                      height: 19.21,
                                      width: 23.18,
                                      isDark: isDark,
                                    ),
                                  ],
                                ),
                                SizedBox(height: 44),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Already have an Account here? ',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Color(0xff818496),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        Navigator.pushReplacement(
                                          context,
                                          PageTransition(
                                            type:
                                                PageTransitionType.leftToRight,
                                            child: LoginScreen(),
                                          ),
                                          // MaterialPageRoute(
                                          //   builder: (context) => LoginScreen(),
                                          // ),
                                        );
                                      },
                                      child: Text(
                                        'SIGN IN',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xff60EEFB),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
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
