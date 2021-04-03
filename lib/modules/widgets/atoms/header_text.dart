import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final Color color;
  final double size;

  const CustomText({
    Key key,
    @required this.text,
    this.color,
    this.size = 40,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      this.text,
      style: TextStyle(
        fontSize: this.size,
        color: color == null ? Color(0xff6D0A09) : color,
      ),
    );
  }
}
