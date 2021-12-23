// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class SocialMediaImages extends StatelessWidget {
  const SocialMediaImages({
    Key? key,
    required this.img,
    required this.height,
    required this.width,
    required this.isDark,
  }) : super(key: key);

  final String img;
  final double height, width;
  final bool isDark;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            color: isDark
                ? Color(0xffAFB2C6).withOpacity(0.05)
                : Color(0xff4B4B50).withOpacity(0.05),
            borderRadius: BorderRadius.circular(60),
          ),
        ),
        Image(
            image: AssetImage('assets/images/auth/$img.png'),
            width: width,
            height: height,
            color: isDark
                ? Color(0xffAFB2C6).withOpacity(0.8)
                : Color(0xff4B4B50).withOpacity(0.9)),
      ],
    );
  }
}
