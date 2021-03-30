import 'package:flutter/material.dart';
import 'package:rpgroll/modules/widgets/header_text.dart';

class HeaderItem extends StatefulWidget {
  final String text;
  final bool isExpanded;
  final Function onTap;
  HeaderItem({Key key, @required this.text, @required this.isExpanded, @required this.onTap}) : super(key: key);

  @override
  _HeaderItemState createState() => _HeaderItemState();
}

class _HeaderItemState extends State<HeaderItem> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: AnimatedContainer(
      child: HeaderText(text: this.widget.text),
      duration: Duration(milliseconds: 600),
      curve: Curves.easeInOutSine,
      height: this.widget.isExpanded ? 60 : 0,
    ),);
  }
}
