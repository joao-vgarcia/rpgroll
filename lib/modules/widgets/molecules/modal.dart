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
  bool canShow = false;
  @override
  void initState() {
    canBuild();
    super.initState();
  }

  canBuild() async {
    await Future.delayed(Duration(milliseconds: 250), () {
      setState(() {
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
