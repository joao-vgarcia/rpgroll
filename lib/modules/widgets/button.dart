import 'package:flutter/material.dart';
import 'package:rpgroll/modules/widgets/header_text.dart';

class Button extends StatelessWidget {
  final Function onTap;
  final String text;
  const Button({Key key, @required this.onTap, @required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        alignment: Alignment.center,
        child: HeaderText(
          text: this.text,
          color: Color(0xff6D0A09),
        ),
        height: 100,
        width: 100,
        padding: EdgeInsets.only(top: 15, left: 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            10,
          ),
          border: Border.all(color: Color(0xff6D0A09)),
          image: DecorationImage(
              image: AssetImage('assets/images/button.png'),
              fit: BoxFit.fill,
              colorFilter: ColorFilter.linearToSrgbGamma()),
          boxShadow: [
            BoxShadow(
              color: Color(0x776D0A09),
              spreadRadius: 4,
              blurRadius: 6,
              offset: Offset(5, 5),
            ),
          ],
        ),
      ),
      onTap: this.onTap,
    );
  }
}
