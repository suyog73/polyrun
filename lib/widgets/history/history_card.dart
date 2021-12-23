// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:work_app/providers/theme_provider.dart';

class HistoryCard extends StatelessWidget {
  const HistoryCard({
    Key? key,
    required this.title,
    required this.subTitle,
    required this.date,
    required this.img,
    required this.imgw,
    required this.imgh,
    required this.color,
  }) : super(key: key);

  final String title, subTitle, date;
  final String img;
  final double imgw, imgh;
  final Color color;

  @override
  Widget build(BuildContext context) {
    bool isDark = Provider.of<ThemeProvider>(context).getDarkMode;

    return Container(
      height: 95,
      decoration: BoxDecoration(
        color: isDark
            ? Color(0xff707070).withOpacity(0.05)
            : Colors.white.withOpacity(0.9),
        borderRadius: BorderRadius.circular(24),
      ),
      child: Row(
        children: [
          SizedBox(width: 16),
          HistoryIcon(
            imgw: 30.08,
            imgh: 30.55,
            img: img,
            color: color,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 17, right: 26),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      color: isDark ? Color(0xffffffff) : Color(0xff000000),
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        subTitle,
                        style: TextStyle(
                          color: Color(0xff818496),
                          fontSize: 13,
                          fontWeight: FontWeight.w100,
                        ),
                      ),
                      Text(
                        date,
                        style: TextStyle(
                          color: Color(0xff818496),
                          fontSize: 14,
                          fontWeight: FontWeight.w100,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class HistoryIcon extends StatelessWidget {
  const HistoryIcon({
    Key? key,
    required this.img,
    required this.imgw,
    required this.imgh,
    required this.color,
  }) : super(key: key);

  final String img;
  final double imgw, imgh;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 55,
      width: 55,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(19),
      ),
      child: Image(
        image: AssetImage('assets/images/history/$img.png'),
        width: imgw,
        height: imgh,
      ),
    );
  }
}
