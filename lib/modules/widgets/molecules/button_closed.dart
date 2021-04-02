import 'package:flutter/material.dart';
import 'package:rpgroll/get_it/get_it.dart';
import 'package:rpgroll/modules/home/store/home_store.dart';
import 'package:rpgroll/modules/widgets/atoms/header_text.dart';


class ButtonClosed extends StatefulWidget {
  final String text;
  final int position;

  ButtonClosed({
    Key key,
    @required this.text,
    this.position,
  }) : super(key: key);

  @override
  _ButtonClosedState createState() => _ButtonClosedState();
}

class _ButtonClosedState extends State<ButtonClosed> {
  final store = getIt<HomeStore>();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child: Container(
          alignment: Alignment.center,
          child: CustomText(
            text: this.widget.text,
            color: Color(0xff6D0A09),
          ),
          padding: EdgeInsets.only(top: 15, left: 5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              10,
            ),
            border: Border.all(color: Color(0xff6D0A09)),
            image: DecorationImage(
              image: AssetImage('assets/images/button.png'),
              fit: BoxFit.fill,
              colorFilter: ColorFilter.linearToSrgbGamma(),
            ),
            boxShadow: [
              BoxShadow(
                color: Color(0x776D0A09),
                spreadRadius: 4,
                blurRadius: 6,
                offset: Offset(5, 5),
              ),
            ],
          ),
        ));
  }
}
