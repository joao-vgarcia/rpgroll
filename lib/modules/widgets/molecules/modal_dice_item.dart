import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:rpgroll/modules/widgets/atoms/header_text.dart';

// ignore: must_be_immutable
class ModalDiceItem extends StatefulWidget {
  Function plusValue;
  Function minusValue;
  String value;
  String type;

  ModalDiceItem({this.plusValue, this.minusValue, this.value, this.type});
  @override
  _ModalDiceItemState createState() => _ModalDiceItemState();
}

class _ModalDiceItemState extends State<ModalDiceItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Observer(
          builder: (_) => GestureDetector(
            onTap: widget.plusValue,
            child: Container(
              alignment: Alignment.center,
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                color: Color(0xff8F8E86),
                shape: BoxShape.circle,
              ),
              child: Container(
                alignment: Alignment.center,
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  color: Color(0xffC4C4C4),
                  shape: BoxShape.circle,
                ),
                child: CustomText(
                  size: 30,
                  text: "+",
                ),
              ),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(
            left: 15,
          ),
          child: Observer(
            builder: (_) => CustomText(
              size: 30,
              text: '${widget.value} ${widget.type}',
            ),
          ),
        ),
        Observer(
          builder: (_) => GestureDetector(
            onTap: widget.minusValue,
            child: Container(
              alignment: Alignment.center,
              height: 40,
              width: 40,
              margin: EdgeInsets.only(left: 10),
              decoration: BoxDecoration(
                color: Color(0xff8F8E86),
                shape: BoxShape.circle,
              ),
              child: Container(
                alignment: Alignment.center,
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  color: Color(0xffC4C4C4),
                  shape: BoxShape.circle,
                ),
                child: CustomText(
                  size: 30,
                  text: "-",
                ),
              ),
            ),
          ),
        )
      ]),
    );
  }
}
