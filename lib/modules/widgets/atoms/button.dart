import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:rpgroll/get_it/get_it.dart';
import 'package:rpgroll/modules/home/store/home_store.dart';
import 'package:rpgroll/modules/widgets/atoms/big_button.dart';
import 'package:rpgroll/modules/widgets/atoms/header_text.dart';
import 'package:rpgroll/modules/widgets/molecules/modal_dice_item.dart';

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
        child: Container(
          height: widget.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/modal.png'),
              fit: BoxFit.fill,
            ),
          ),
          child: !isClicked
              ? GestureDetector(
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
                  ),
                  onTap: () {
                    store.setInvisible(widget.position);
                    setState(() {
                      if (!isClicked) {
                        h = widget.height * 0.7;
                        w = widget.width;
                      }
                    });
                    isClicked = !isClicked;
                  })
              : Observer(
                  builder: (_) => Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/modal.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                    child: Expanded(
                      child: Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              GestureDetector(
                                  child: Padding(
                                    padding: EdgeInsets.only(top: 25, left: 25),
                                    child: CustomText(text: 'X'),
                                  ),
                                  onTap: () {
                                    setState(() {
                                      if (isClicked) {
                                        h = 100;
                                        w = 100;
                                        store.setAllVisible();
                                      }
                                    });
                                    isClicked = !isClicked;
                                  }),
                              Padding(
                                padding: EdgeInsets.only(top: 25, left: 25),
                                child: CustomText(text: 'D${widget.text}'),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Observer(
                                builder: (_) => ModalDiceItem(
                                  type: 'D',
                                  value: store.dices.toString(),
                                  plusValue: store.plusValue,
                                  minusValue: store.minusValue,
                                ),
                              ),
                              Observer(
                                builder: (_) => ModalDiceItem(
                                  type: '',
                                  value: store.bonus.toString(),
                                  plusValue: store.plusBonus,
                                  minusValue: store.minusBonus,
                                ),
                              ),
                            ],
                          ),
                          Observer(
                            builder: (_) => Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  child: CustomText(
                                      text: store.showCalcs, size: 20),
                                ),
                              ],
                            ),
                          ),
                          Observer(
                            builder: (_) => Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  height: 200,
                                  width: 200,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/result.png'),
                                      fit: BoxFit.fill,
                                    ),
                                    shape: BoxShape.circle,
                                  ),
                                  child: CustomText(
                                    text: store.finalValue.toString(),
                                    size: 50,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          BigButton(
                            text: "Jogar",
                            width: widget.width * 0.8,
                            buttonHeight: 60,
                            setPadding: false,
                            onTap: store.rollAndCalculate,
                            isFinal: true,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
        ),
      ),
    );
  }
}
