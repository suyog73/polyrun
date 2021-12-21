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
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                child: Container(
                  color: color,
                ),
              ),
            ),
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 51.0, left: 16),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.leftToRight,
                            child: LoginScreen(),
                          ),
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
                  Container(
                    height: size.height * 0.9,
                    child: Stack(
                      children: [
                        ClipRect(
                          child: BackdropFilter(
                            filter:
                                ImageFilter.blur(sigmaX: 30.0, sigmaY: 30.0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: isDark
                                    ? Colors.grey.shade700.withOpacity(0.08)
                                    : Colors.grey.shade300.withOpacity(0.15),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(42),
                                  topRight: Radius.circular(42),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15.0),
                          child: Column(
                            // crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Sign Up',
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(height: 14),
                              Text(
                                'Lorem ipsum dolor sit amet, construe sadistic elite, sed diam nonhuman usermod',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xffAFB2C6),
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
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
                                        color: Color(0xffAFB2C6),
                                        fontSize: 12,
                                      ),
                                    ),
                                    SizedBox(height: 23),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        SocialMediaImages(img: 'facebook'),
                                        SocialMediaImages(img: 'google'),
                                        SocialMediaImages(img: 'twitter'),
                                      ],
                                    ),
                                    SizedBox(height: 44),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
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
                                            Navigator.push(
                                              context,
                                              PageTransition(
                                                type: PageTransitionType
                                                    .leftToRight,
                                                child: LoginScreen(),
                                              ),
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
