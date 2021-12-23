// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:work_app/providers/theme_provider.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    Key? key,
    required this.title,
    required this.subTitle,
    required this.img,
  }) : super(key: key);

  final String title, subTitle;
  final String img;

  @override
  Widget build(BuildContext context) {
    bool isDark = Provider.of<ThemeProvider>(context).getDarkMode;

    return Container(
      height: 95,
      decoration: BoxDecoration(
        color: isDark
            ? Color(0xff707070).withOpacity(0.1)
            : Colors.white.withOpacity(0.9),
        borderRadius: BorderRadius.circular(24),
      ),
      child: Row(
        children: [
          SizedBox(width: 16),
          ProfileIcon(img: img),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 17, right: 26),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                          color: isDark ? Color(0xffffffff) : Color(0xff000000),
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Icon(
                        Icons.check,
                        color: Color(0xff60EEFB),
                      )
                    ],
                  ),
                  SizedBox(height: 7),
                  Text(
                    subTitle,
                    style: TextStyle(
                      color: isDark ? Color(0xff818496) : Colors.black,
                      fontSize: 13,
                      fontWeight: isDark ? FontWeight.w100 : FontWeight.w400,
                    ),
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

class ProfileIcon extends StatelessWidget {
  const ProfileIcon({
    Key? key,
    required this.img,
  }) : super(key: key);

  final String img;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 51,
      width: 51,
      decoration: BoxDecoration(
        color: Color(0xff60EEFB).withOpacity(0.1),
        borderRadius: BorderRadius.circular(19),
      ),
      child: Image(
        image: AssetImage('assets/images/profile/$img.png'),
        width: 22.47,
        height: 22.47,
      ),
    );
  }
}
