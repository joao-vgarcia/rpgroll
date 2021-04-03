import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:rpgroll/get_it/get_it.dart';
import 'package:rpgroll/modules/home/store/home_store.dart';
import 'package:rpgroll/modules/widgets/atoms/big_button.dart';
import 'package:rpgroll/modules/widgets/atoms/header_text.dart';
import 'package:rpgroll/modules/widgets/molecules/modal_dice_item.dart';

class Modal extends StatefulWidget {
  final double width;
  final double height;
  final String text;
  final int position;

  Modal({
    Key key,
    @required this.text,
    this.width,
    this.position,
    this.height,
  }) : super(key: key);

  @override
  _ModalState createState() => _ModalState();
}

class _ModalState extends State<Modal> {
  final store = getIt<HomeStore>();
  TextEditingController controller = TextEditingController();
  bool canShow = false;
  @override
  void initState() {
    canBuild();
    super.initState();
  }

  canBuild() async {
    await Future.delayed(Duration(milliseconds: 250), () {
      setState(() {
        if (widget.text != "Customize") {
          if (int.parse(widget.text) != store.value) {
            store.clear();
            store.clearValue();
            store.setInitialValue(int.parse(widget.text));
          }
        } else {
          store.setInitialValue(0);
        }
        canShow = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return canShow
        ? Observer(
            builder: (_) => Container(
              width: widget.width,
              height: widget.height - 300,
              padding: EdgeInsets.only(top: 30),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/modal.png'),
                  fit: BoxFit.fill,
                ),
              ),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      widget.text == "Customize"
                          ? Container(
                              margin: EdgeInsets.only(bottom: 10),
                              alignment: Alignment.center,
                              width: widget.width * 0.5,
                              child: TextField(
                                controller: store.controller,
                                style: TextStyle(
                                  fontSize: 30,
                                  color: Color(0xff6D0A09),
                                ),
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                    hintStyle: TextStyle(
                                      color: Color(0xff6D0A09),
                                    ),
                                    focusColor: Color(0xff6D0A09),
                                    labelStyle: TextStyle(
                                      color: Color(0xff6D0A09),
                                    ),
                                    isDense: true,
                                    hintText: 'Valor'),
                              ),
                            )
                          : SizedBox(
                              height: 0,
                            ),
                      widget.text == "Customize"
                          ? GestureDetector(
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
                                store.controller.text = "";
                              })
                          : SizedBox(height: 0),
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
                        Flexible(
                          flex: 1,
                          fit: FlexFit.loose,
                          child: Padding(
                            padding: EdgeInsets.only(top: 5),
                            child: Container(
                              alignment: Alignment.center,
                              child:
                                  CustomText(text: store.showCalcs, size: 20),
                            ),
                          ),
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
                          height: 150,
                          width: 150,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/result.png'),
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
                  )
                ],
              ),
            ),
          )
        : SizedBox(
            height: 0,
          );
  }
}
