import 'package:flutter/material.dart';

class WrapLianXi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return this._get1(context);
  }

  Widget _get1(context) {
    return Wrap(
      //direction:Axis.vertical ,  //主轴的方向
      //alignment: WrapAlignment.center,
      spacing: 10, //主轴widget间的距离
      runSpacing: 10, //福轴widget间的距离
      children: <Widget>[
        MyButton("1"),
        MyButton("1"),
        MyButton("1"),
        MyButton("1"),
        MyButton("1"),
        MyButton("1"),
        MyButton("1"),
        MyButton("1"),
        MyButton("1"),
        MyButton("1"),
        MyButton("1"),
        MyButton("1"),
        MyButton("1"),
        MyButton("1"),
        MyButton("1"),
        MyButton("1"),
        MyButton("1"),
        MyButton("1"),
        MyButton("1"),
        MyButton("1"),
        MyButton("1"),
      ],
    );
  }
}

class MyButton extends StatelessWidget {
  final String test;
  const MyButton(
    this.test, {
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text(test),
      textColor: Theme.of(context).accentColor,
      onPressed: () {},
    );
  }
}
