// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:work_app/providers/theme_provider.dart';

class SettingCard extends StatelessWidget {
  const SettingCard({
    Key? key,
    required this.title,
    this.subTitle = '',
    required this.img,
    required this.imgw,
    required this.imgh,
    required this.color,
    this.subtitle2 = '',
  }) : super(key: key);

  final String title, subTitle, subtitle2;
  final String img;
  final double imgw, imgh;
  final Color color;

  @override
  Widget build(BuildContext context) {
    bool isDark = Provider.of<ThemeProvider>(context).getDarkMode;

    return Row(
      children: [
        SettingIcon(img: img, imgw: imgw, imgh: imgh, color: color),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 14),
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
                    Row(
                      children: [
                        Text(
                          subtitle2,
                          style: TextStyle(
                            color: Color(0xff60EEFB),
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(width: 13.5),
                        Icon(
                          Icons.keyboard_arrow_right,
                          color: Color(0xff818496),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 5),
                if (subTitle != '')
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
    );
  }
}

class SettingIcon extends StatelessWidget {
  const SettingIcon({
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
      height: 46,
      width: 46,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(19),
      ),
      child: Image(
        image: AssetImage('assets/images/setting/$img.png'),
        width: imgw,
        height: imgh,
      ),
    );
  }
}
