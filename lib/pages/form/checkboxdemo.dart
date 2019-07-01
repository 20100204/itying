import 'package:flutter/material.dart';

class CheckBoxDemo extends StatefulWidget {
  @override
  _CheckBoxDemoState createState() => _CheckBoxDemoState();
}

class _CheckBoxDemoState extends State<CheckBoxDemo> {
  var _flag = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("checkbox"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Row(children: <Widget>[
            Checkbox(
              checkColor: Colors.red,
              activeColor: Colors.black12,
              value: this._flag,
              onChanged: (v){
                //print(v);
                setState(() {
                 this._flag = v; 
                });
              },
            ),
            SizedBox(width: 2,),
            Text(this._flag==true?"是":"否"),
            
          ],),

          SizedBox(height: 20,), 
          CheckboxListTile(
              value: this._flag,
              onChanged: (v){
                setState(() {
                 this._flag = v; 
                });
              },
              title: Text("标题"),
          )

        ],
      ),
    );
  }
}