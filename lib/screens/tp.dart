// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:work_app/screens/bottom_navigation.dart';
import 'package:work_app/widgets/graph_chart.dart';

class Tp extends StatelessWidget {
  const Tp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(child: BottomNavigation());
  }
}
