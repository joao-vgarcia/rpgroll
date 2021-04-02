import 'package:flutter/material.dart';
import 'package:rpgroll/modules/widgets/atoms/header_text.dart';

class BigButton extends StatelessWidget {
  final String text;
  final double width;
  final double height;
  final double buttonHeight;
  final bool setPadding;
  final Function onTap;
  final bool isFinal;
  const BigButton(
      {Key key,
      @required this.text,
      this.width = 100,
      this.height,
      this.buttonHeight = 100,
      this.setPadding = true,
      this.isFinal = false,
      this.onTap,
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        alignment: Alignment.center,
        child: CustomText(
          text: this.text,
          color: Color(0xff6D0A09),
        ),
        height: this.buttonHeight,
        width: this.width,
        padding: this.setPadding
            ? EdgeInsets.only(top: 15, left: 5)
            : EdgeInsets.all(0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            10,
          ),
          border: Border.all(color: Color(0xff6D0A09)),
          image: DecorationImage(
              image: AssetImage('assets/images/button.png'),
              fit: BoxFit.fitWidth,
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
