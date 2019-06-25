import 'package:flutter/material.dart';
import './column.dart';

class ExpandedLianXi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return this._getLianXi2();
  }

  Widget _getLianXi2() {
    return Container(
      padding: EdgeInsets.all(4.0),
      child: Column(
        children: <Widget>[
          Container(
            height: 100.0,
            color: Colors.lightBlue,
          ),
          SizedBox(
            height: 10.0,
          ),
          Row(
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(height: 70, color: Colors.green),
              ),
              SizedBox(
                width: 10.0,
              ),
              Expanded(
                flex: 1,
                child: Container(height: 70, color: Colors.black12),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _getLianxi() {
    return Row(
      children: <Widget>[
        IconContainer(
          Icons.search,
          color: Colors.blue,
        ),
        Expanded(
          flex: 1,
          child: IconContainer(
            Icons.search,
            color: Colors.pink,
          ),
        ),
        Expanded(
          flex: 2,
          child: IconContainer(
            Icons.search,
            color: Colors.green,
          ),
        ),
        Expanded(
          flex: 1,
          child: IconContainer(
            Icons.search,
            color: Colors.pink,
          ),
        ),
      ],
    );
  }
}
