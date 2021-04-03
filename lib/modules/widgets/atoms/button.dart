import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:rpgroll/get_it/get_it.dart';
import 'package:rpgroll/modules/home/store/home_store.dart';
import 'package:rpgroll/modules/widgets/molecules/button_closed.dart';
import 'package:rpgroll/modules/widgets/molecules/modal.dart';
import 'package:rpgroll/modules/widgets/atoms/header_text.dart';

class Button extends StatefulWidget {
  final double height;
  final double width;
  final String text;
  final bool isBig;
  final int position;

  const Button({
    Key key,
    this.height,
    @required this.text,
    this.width,
    this.isBig = false,
    this.position,
  }) : super(key: key);

  @override
  _ButtonState createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  final store = getIt<HomeStore>();
  double h = 100;
  double w = 100;
  bool isClicked = false;

  @override
  Widget build(BuildContext context) {
    if (int.parse(widget.text) != store.value) {
      store.clear();
      store.clearValue();
      store.setInitialValue(int.parse(widget.text));
    }

    return Observer(
      builder: (_) => AnimatedContainer(
        duration: Duration(milliseconds: 200),
        curve: Curves.linear,
        height: store.isVisible[widget.position] ? store.h : 0,
        width: store.isVisible[widget.position]
            ? (widget.isBig ? widget.width * 0.9 : store.w)
            : 0,
        child: !store.popScope[widget.position]
            ? GestureDetector(
                onTap: () {
                  store.h = widget.height * 0.68;
                  store.w = widget.width;
                  store.canShowDialog = false;
                  store.setInvisible(widget.position);
                  store.setPopScope(widget.position);
                },
                child: ButtonClosed(
                  text: widget.text,
                ))
            : Column(children: [
                Container(
                  alignment: Alignment.bottomCenter,
                  height: 45,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/modal.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
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
                                text: "X",
                              ),
                            ),
                          ),
                          onTap: () {
                            store.h = 100;
                            store.w = 100;
                            store.canShowDialog = true;
                            store.setAllVisible();
                            store.setAllPop();
                          }),
                      CustomText(text: 'D${widget.text}'),
                    ],
                  ),
                ),
                Modal(
                  height: widget.height,
                  width: widget.width,
                  text: widget.text,
                ),
              ]),
      ),
    );
  }
}
