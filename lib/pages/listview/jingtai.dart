import 'package:flutter/material.dart';

class Jingtai extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 180.0,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Container(
              width: 180.0,
              color: Colors.red,
            ),
            Container(
              width: 180.0,
              color: Colors.blue,
            ),
            Container(
              width: 180.0,
              color: Colors.green,
            ),
            Container(
              width: 180.0,
              color: Colors.pink,
            ),
            Container(
              width: 180.0,
              color: Colors.deepOrange,
            ),
          ],
        ));
  }
}
