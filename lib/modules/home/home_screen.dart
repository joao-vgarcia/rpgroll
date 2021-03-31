import 'package:flutter/material.dart';
import 'package:rpgroll/get_it/get_it.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:rpgroll/modules/home/store/home_store.dart';
import 'package:rpgroll/modules/utils/modal.dart';
import 'package:rpgroll/modules/widgets/big_button.dart';
import 'package:rpgroll/modules/widgets/button.dart';
import 'package:rpgroll/modules/widgets/header_item.dart';

import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:rpgroll/modules/widgets/header_text.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final store = getIt<HomeStore>();

  changeSize(double value) {
    if (!store.isExpanded) {
      store.setHeight(value * 0.4);
    } else {
      store.setHeight(value * 0.1);
    }
    store.changeExpanded();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    double topPadding = MediaQuery.of(context).padding.top;
    store.setTopPadding(topPadding);
    store.setHeight(height * 0.1);
    store.setConfigValues();

    return Scaffold(
      body: Container(
        width: width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background.png'),
            fit: BoxFit.fill,
          ),
        ),
        child: Observer(
          builder: (_) => SizedBox(
            height: store.heigth + height,
            width: width,
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      !store.isExpanded ? changeSize(height) : print('nothing');
                    },
                    child: Observer(
                      builder: (_) => AnimatedContainer(
                        child: Column(children: [
                          SizedBox(
                            height: topPadding,
                          ),
                          Column(children: [
                            HeaderItem(
                              text: store.allConfigs[0],
                              isExpanded: store.isExpanded,
                            ),
                            HeaderItem(
                              text: store.allConfigs[1],
                              isExpanded: store.isExpanded,
                            ),
                            HeaderItem(
                              text: store.allConfigs[2],
                              isExpanded: store.isExpanded,
                            ),
                          ]),
                          AnimatedContainer(
                            child: Text(
                              'Configurações',
                              style:
                                  TextStyle(fontSize: 40, color: Colors.black),
                            ),
                            duration: Duration(milliseconds: 300),
                            curve: Curves.easeInOutSine,
                            height: !store.isExpanded ? 60 : 0,
                          ),
                          GestureDetector(
                            onTap: () {
                              store.isExpanded
                                  ? changeSize(height)
                                  : print('ok');
                            },
                            child: AnimatedContainer(
                              child: Text(
                                'X',
                                style: TextStyle(
                                    fontSize: 50, color: Colors.black),
                              ),
                              duration: Duration(milliseconds: 300),
                              curve: Curves.easeInOutSine,
                              height: store.isExpanded ? 60 : 0,
                            ),
                          ),
                        ]),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/modal.png'),
                            fit: BoxFit.fill,
                          ),
                        ),
                        width: width,
                        height: store.heigth,
                        duration: Duration(milliseconds: 200),
                        curve: Curves.fastOutSlowIn,
                      ),
                    ),
                  ),
                  Observer(
                    builder: (_) => Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 30, horizontal: 10),
                      child: Wrap(
                        spacing: 20,
                        runSpacing: 20,
                        alignment: WrapAlignment.center,
                        children: [
                          Button(
                            text: '4',
                            height: height,
                          ),
                          Button(
                            text: '6',
                            height: height,
                          ),
                          Button(
                            text: '8',
                            height: height,
                          ),
                          Button(
                            text: '10',
                            height: height,
                          ),
                          Button(
                            text: '12',
                            height: height,
                          ),
                          Button(
                            text: '20',
                            height: height,
                          ),
                          BigButton(
                            text: '100',
                            height: height,
                            width: width * 0.9,
                          ),
                          BigButton(
                            width: width * 0.9,
                            height: height,
                            text: 'Customize',
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
