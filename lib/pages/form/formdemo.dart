import 'package:flutter/material.dart';

class FormDemo extends StatefulWidget {
  @override
  _FormDemoState createState() => _FormDemoState();
}

class _FormDemoState extends State<FormDemo> {
  String userName;
  String info;
  int sex;
  List hobby = [
    {"checked": true, "title": "吃饭"},
    {"checked": true, "title": "睡觉"},
    {"checked": false, "title": "写代码"},
    {"checked": true, "title": "看书"}
  ];
  //爱好
  List<Widget> _getHobby(){
      List<Widget> tempList = [];
      for(var i=0;i<hobby.length;i++){
          tempList.add(Text(this.hobby[i]["title"]));
          tempList.add(
            Checkbox(
              value: this.hobby[i]['checked'],
              onChanged: (v){
                setState(() {
                     this.hobby[i]['checked'] = v;
                });
              },
            ),
          );
      }
return tempList;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("form demo page"),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            TextField(
              onChanged: (v) {
                setState(() {
                  this.userName = v;
                });
              },
              decoration: InputDecoration(hintText: "输入用户信息:"),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: <Widget>[
                Text("男："),
                Radio(
                  value: 1,
                  groupValue: this.sex,
                  onChanged: this._setSex,
                ),
                SizedBox(
                  width: 20,
                ),
                Text("女："),
                Radio(
                  value: 2,
                  groupValue: this.sex,
                  onChanged: this._setSex,
                ),
              ],
            ),
             Column(
               
             children: <Widget>[
                  Row(children:    this._getHobby(),)
             ],
            
             ),
             TextField(
               maxLines: 3,
               decoration: InputDecoration(
                 hintText: "用户信息",
                 border: OutlineInputBorder()
               ),
               onChanged: (v){
                 setState(() {
                  this.info = v; 
                 });
               },
             ),
            Container(
              width: double.infinity,
              child: RaisedButton(
                child: Text("登录"),
                color: Colors.blue,
                textColor: Colors.white,
                onPressed: () {
                  print(this.userName);
                  print(this.sex);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _setSex(v) {
    setState(() {
      this.sex = v;
    });
  }
}
