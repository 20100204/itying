import 'package:flutter/material.dart';
import '../../pages/tabs/tabs.dart';

class Regthird extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("注册-验证码"),),
      body: Column(
        children: <Widget>[
          SizedBox(height: 40,),
          RaisedButton(
            child: Text("完成"),
            onPressed: (){
             // Navigator.of(context).pop();
             Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context)=>Tabs(index:1)), (router)=>router==null); //跳转到指定的跟目录
            },
          ),
        ],
      ),
    );
  }
}