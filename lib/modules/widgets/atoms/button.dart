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
        duration: Duration(milliseconds: 600),
        curve: Curves.linear,
        height: store.isVisible[widget.position] ? h : 0,
        width: store.isVisible[widget.position]
            ? (widget.isBig ? widget.width * 0.9 : w)
            : 0,
        child: !isClicked
            ? GestureDetector(
                onTap: () {
                  setState(() {
                    h = widget.height * 0.68;
                    w = widget.width;
                    isClicked = !isClicked;
                    store.setInvisible(widget.position);
                  });
                },
                child: ButtonClosed(
                  text: widget.text,
                ))
            : Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                        child: CustomText(text: 'X'),
                        onTap: () {
                          setState(() {
                            h = 100;
                            w = 100;
                            isClicked = !isClicked;
                          });
                          store.setAllVisible();
                        }),
                    CustomText(text: 'D${widget.text}'),
                  ],
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
