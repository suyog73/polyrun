// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class IconBack extends StatelessWidget {
  const IconBack({Key? key, required this.img}) : super(key: key);
  final String img;

  @override
  Widget build(BuildContext context) {
    bool isDark = MediaQuery.of(context).platformBrightness == Brightness.dark;

    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: 45,
          width: 46,
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.07),
            borderRadius: BorderRadius.circular(19),
          ),
        ),
        Image(
          image: AssetImage('assets/icons/$img.png'),
          width: 18.16,
          height: 18.16,
        )
      ],
    );
  }
}
