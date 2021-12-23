// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class SimpleCard extends StatelessWidget {
  const SimpleCard({
    Key? key,
    required this.img,
    required this.value,
    required this.subValue,
    required this.imgw,
    required this.imgh,
    this.value2 = '',
  }) : super(key: key);
  final String img, value, subValue, value2;
  final double imgw, imgh;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image(
          image: AssetImage('assets/images/profile/$img.png'),
          width: imgw,
          height: imgh,
        ),
        SizedBox(height: 8),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              value,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 3.0),
              child: Text(
                value2,
                style: TextStyle(
                  fontSize: 9,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 7),
        Text(
          subValue,
          style: TextStyle(
            color: Color(0xff818496),
            fontSize: 10,
            fontWeight: FontWeight.w200,
          ),
        ),
      ],
    );
  }
}
