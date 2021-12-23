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
    return Stack(
      children: [
        Container(
          width: 112,
          height: 134,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(24),
          ),
        ),
        Positioned(
          left: 22,
          right: 31,
          top: 19,
          bottom: 20,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image(
                image: AssetImage('assets/icons/$icon.png'),
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
        ),
      ],
    );
  }
}
