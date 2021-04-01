import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rpgroll/get_it/get_it.dart';
import 'package:rpgroll/modules/home/home_screen.dart';

void main() {
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  setUpLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'RPG Roller',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          visualDensity: VisualDensity.adaptivePlatformDensity,
          fontFamily: 'MedievalSharp',
        ),
        home: HomeScreen());
  }
}
