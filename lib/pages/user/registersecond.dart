import 'package:flutter/material.dart';


class RegSecond extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("注册-输入密码"),),
      body: Column(
        children: <Widget>[
          SizedBox(height: 40,),
          Text("输入密码完成注册"),
          RaisedButton(
            child: Text("下一步"),
            onPressed: (){
              //Navigator.of(context).pop();
              Navigator.of(context).pushReplacementNamed("/regthird");
            },
          )

        ],
      ),
    );
  }
}