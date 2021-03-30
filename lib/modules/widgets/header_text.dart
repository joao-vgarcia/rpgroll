import 'package:flutter/material.dart';

class HeaderText extends StatelessWidget {
  final String text;
  final Color color;
  final double size;

  const HeaderText({
    Key key,
    @required this.text,
    this.color = Colors.black,
    this.size = 50,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      this.text,
      style: TextStyle(
        fontSize: this.size,
        color: this.color,
      ),
    );
  }
}
