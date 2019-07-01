import 'package:flutter/material.dart';

class ThreeLevel extends StatelessWidget {
  var arguments;
  ThreeLevel({this.arguments});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.arguments['title']),
      ),
      body: Container(
          child: Column(
        children: <Widget>[
          RaisedButton(
            child: Text("跳转到登陆页面"),
            onPressed: () {
              Navigator.pushNamed(context, "/login");
            },
          ),
          RaisedButton(
            child: Text('条到注册页'),
            onPressed: () {
              Navigator.pushNamed(context, "/regfirst");
            },
          ),
        ],
      )),
    );
  }
}
