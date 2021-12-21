import 'package:flutter/material.dart';

class SocialMediaImages extends StatelessWidget {
  const SocialMediaImages({Key? key, required this.img}) : super(key: key);

  final String img;

  @override
  Widget build(BuildContext context) {
    return Image(
      image: AssetImage('assets/images/$img.png'),
      width: 60,
      height: 60,
      color: Theme.of(context).iconTheme.color,
    );
  }
}
