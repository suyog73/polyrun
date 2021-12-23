// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:work_app/helpers/constants.dart';

class InputFields extends StatelessWidget {
  const InputFields({Key? key, required this.hintText, required this.isDark})
      : super(key: key);

  final String hintText;
  final bool isDark;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(27),
          color: isDark
              ? Color(0xff121322).withOpacity(0.2)
              : Colors.grey.shade300.withOpacity(0.2),
          border: Border.all(
            color: isDark
                ? Colors.grey.shade700.withOpacity(0.15)
                : Colors.grey.shade500.withOpacity(0.1),
          ),
        ),
        child: TextFormField(
          style: TextStyle(
            color: Color(0xff818496),
            fontSize: 14,
          ),
          decoration: kTextFormFieldAuthDec.copyWith(
            hintText: hintText,
          ),
        ),
      ),
    );
  }
}
