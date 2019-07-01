import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import './third.dart';

class OfficeDialogDemo extends StatefulWidget {
  @override
  _OfficeDialogDemoState createState() => _OfficeDialogDemoState();
}

class _OfficeDialogDemoState extends State<OfficeDialogDemo> {
  _alertDialog() async {
    var res = await showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("提示信息"),
            content: Text("真的要删除么？"),
            actions: <Widget>[
              FlatButton(
                  child: Text("取消"),
                  onPressed: () {
                    print("cancel");
                    Navigator.pop(context, "1");
                  }),
              FlatButton(
                  child: Text("确定"),
                  onPressed: () {
                    print("confirm");
                    Navigator.pop(context, "2");
                  }),
            ],
          );
        });

    print(res);
  }

  _simpleDialog() async {
    var res = await showDialog(
        context: context,
        builder: (context) {
          return SimpleDialog(
            title: Text("simple dialog"),
            children: <Widget>[
              SimpleDialogOption(
                child: Text("option A"),
                onPressed: () {
                  print("A");
                  Navigator.pop(context, "AA");
                },
              ),
              Divider(),
              SimpleDialogOption(
                child: Text("option B"),
                onPressed: () {
                  print("B");
                  Navigator.pop(context, "BB");
                },
              ),
              Divider(),
              SimpleDialogOption(
                child: Text("option C"),
                onPressed: () {
                  print("C");
                  Navigator.pop(context, "CC");
                },
              ),
            ],
          );
        });
  }
  _modalbottomDialogsheet() async {
      var res = await showModalBottomSheet(
        context: context,
        builder: (context){
          return Container(
            height: 200,
            child: Column(
              
              children: <Widget>[
                ListTile(
                  title: Text("a"),
                  onTap: (){
                    Navigator.pop(context,'a');
                  },
                ),
                Divider(),
                  ListTile(
                  title: Text("b"),
                  onTap: (){
                      Navigator.pop(context,'b');
                  },
                ),
                Divider(),
                  ListTile(
                  title: Text("c"),
                  onTap: (){
                    Navigator.pop(context,'c');
                  },
                ),
              ],
            ),
          );
        }
      );
      print(res);
  }
  _toast()async{
    var res =  await Fluttertoast.showToast(
      msg:"这个时xxxxxxxxxxx",
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.CENTER, //提示信息的位置
      timeInSecForIos: 2, //停留时间
      backgroundColor: Colors.red,
      textColor: Colors.white,
      fontSize: 20
    );
    print(res);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("office dialog demo"),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            RaisedButton(
              child: Text("alert dialog"),
              onPressed: _alertDialog,
            ),
            RaisedButton(
              child: Text("simple dialog"),
              onPressed: _simpleDialog,
            ),
            RaisedButton(
              child: Text("modal bottom dialog"),
              onPressed: _modalbottomDialogsheet,
            ),
            RaisedButton(
              child: Text("show toast"),
              onPressed: _toast,
            ),
            RaisedButton(
              child: Text("自定义dialog"),
              onPressed: (){
                showDialog(
                    context: context,
                    builder: (context){
                      return MyDialog(
                        title:"标题",
                        content:"内容"
                        );
                    }
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
