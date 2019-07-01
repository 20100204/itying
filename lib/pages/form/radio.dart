import 'package:flutter/material.dart';

class RadioDemo extends StatefulWidget {
  @override
  _RadioDemoState createState() => _RadioDemoState();
}

class _RadioDemoState extends State<RadioDemo> {
  var sex;
  var state = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("radio demo"),
      ),
      body: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Text("男:"),
                  Radio(
                    value: 1,
                    groupValue: this.sex,
                    onChanged: (v) {
                      setState(() {
                        this.sex = v;
                      });
                    },
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text("女:"),
                  Radio(
                    value: 2,
                    groupValue: this.sex,
                    onChanged: (v) {
                      setState(() {
                        this.sex = v;
                      });
                    },
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Text("${this.sex}"),
                  Text(this.sex == 1 ? "男" : "女")
                ],
              ),
              SizedBox(
                height: 40,
              ),
              RadioListTile(
                title: Text("标题11"),
                subtitle: Text("子标题11"),
                value: 1,
                selected: true, //文字会高亮
                groupValue: this.sex,
                onChanged: (v) {},
              ),
              RadioListTile(
                title: Text("标题22"),
                subtitle: Text("子标题22"),
                value: 2,
                selected: true,
                groupValue: this.sex,
                onChanged: (v) {},
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                children: <Widget>[
                  Text("switch开关:"),
                  Switch(
                    value: this.state,
                    onChanged: (v) {
                      print(v);
                      setState(() {
                        this.state = v;
                      });
                    },
                  ),
                ],
              ),
            ],
          )),
    );
  }
}
