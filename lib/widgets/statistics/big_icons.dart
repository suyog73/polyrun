// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BigIcons extends StatelessWidget {
  const BigIcons({
    Key? key,
    required this.icon,
    required this.value,
    required this.subValue,
    required this.color,
  }) : super(key: key);
  final String icon, value, subValue;
  final Color color;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      alignment: Alignment.center,
      width: size.width * 0.28,
      height: 134,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            image: AssetImage('assets/images/statistics/$icon.png'),
            width: 37,
            height: 37,
          ),
          SizedBox(height: 10),
          Text(
            value,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
          ),
          SizedBox(height: 4),
          Text(
            subValue,
            style: TextStyle(fontSize: 12, color: Color(0xff818496)),
          )
        ],
      ),
    );
  }
}
