import 'package:flutter/material.dart';
import 'dart:async';

class MyDialog extends Dialog {
  String title;
  String content;
  MyDialog({this.title="",this.content=""});

  _showTimer(context){
    var timer;
    timer = Timer.periodic(Duration(milliseconds: 3000), (t){
      print("执行");
      Navigator.pop(context);
      t.cancel();//取消定时器
    });
  }
  @override
  Widget build(BuildContext context) {
     _showTimer(context);
    // TODO: implement build
    return Material(
      type: MaterialType.transparency,
      child: Center(
        child: Container(
          height: 200,
          width: 200,
          color: Colors.white,
          child: Column(
          //  mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(10),
                child: Stack(
                  children: <Widget>[
                    Align(
                      child: Text(this.title),
                      alignment: Alignment.center,
                    ),
                    Align(
                      alignment:Alignment.centerRight,
                      child: InkWell(
                        child: Icon(Icons.close),
                        onTap: (){
                          Navigator.pop(context);
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Divider(),
              Container(
                width: double.infinity,
                child: Text(this.content),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
