import 'package:flutter/material.dart';
import 'package:rpgroll/get_it/get_it.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:rpgroll/modules/home/store/home_store.dart';
import 'package:rpgroll/modules/widgets/header_item.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final store = getIt<HomeStore>();

  changeSize(double value) {
    if (!store.isExpanded) {
      store.setHeight(value * 0.5);
    } else {
      store.setHeight(value * 0.1);
    }
    store.changeExpanded();
  }

  dummyFunction() => print('ok true');

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
                        onTap: dummyFunction,
                      ),
                      HeaderItem(
                        text: store.allConfigs[1],
                        isExpanded: store.isExpanded,
                        onTap: dummyFunction,
                      ),
                      HeaderItem(
                        text: store.allConfigs[2],
                        isExpanded: store.isExpanded,
                        onTap: dummyFunction,
                      ),
                    ]),
                    Container(
                      child: Text(
                        'Configurações',
                        style: TextStyle(fontSize: 50, color: Colors.black),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        store.isExpanded
                            ? changeSize(height)
                            : print('nothing');
                      },
                      child: AnimatedContainer(
                        child: Text(
                          'X',
                          style: TextStyle(fontSize: 60, color: Colors.black),
                        ),
                        duration: Duration(milliseconds: 900),
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
                  duration: Duration(milliseconds: 1000),
                  curve: Curves.fastOutSlowIn,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
