import 'dart:collection';

import 'package:flutter/cupertino.dart';

class SmallText extends StatelessWidget {
  late Color? color;
  final String text;
  late double size;
  late double height;

  SmallText(
      {Key? key,
      this.color = const Color(0xFFccc7c5),
      required this.text,
      this.height = 1.2 ,
      this.size = 12})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontFamily: 'Roboto',
        fontSize: size,
        height: height
      ),
    );
  }
}
