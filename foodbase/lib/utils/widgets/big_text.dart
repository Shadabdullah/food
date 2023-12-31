import 'package:flutter/cupertino.dart';

class BigText extends StatelessWidget {
  late Color? color;
  final String text;
  late double size;
  late TextOverflow overflow;

  BigText(
      {Key? key,
      this.color = const Color(0xFF332d2b),
      required this.text,
      this.overflow = TextOverflow.ellipsis,
      this.size = 20})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      overflow: overflow,
      style: TextStyle(
          color: color,
          fontFamily: 'Roboto',
          fontSize: size,
        
          fontWeight: FontWeight.w400),
    );
  }
}
