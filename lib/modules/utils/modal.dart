import 'package:flutter/material.dart';
import 'package:rpgroll/modules/widgets/header_text.dart';

showModal(BuildContext context, double height, String title) =>
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return Container(
            height: height * 0.6,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/modal.png'),
                fit: BoxFit.fill,
              ),
            ),
            child: Column(
              children: <Widget>[
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Padding(
                      padding: EdgeInsets.only(top: 25),
                      child: HeaderText(text: title))
                ]),
              ],
            ),
          );
        });
