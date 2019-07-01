import 'package:flutter/material.dart';

class TextFieldDemo extends StatefulWidget {
  @override
  _TextFieldDemoState createState() => _TextFieldDemoState();
}

class _TextFieldDemoState extends State<TextFieldDemo> {
  var userName = TextEditingController(); //初始化赋值
  var passwd;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    userName.text="初始值";
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("表单演示页面"),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            TextField(
              onChanged: (v){
                setState(() {
                  this.userName.text = v;
                });
                
              },
              controller: this.userName,
             // obscureText: true,
             // maxLines: 3,
              decoration: InputDecoration(
                  hintText: "请输入要搜索的内容",
              //    border: OutlineInputBorder(),
                 // icon: Icon(Icons.people),
                //  labelText: "用户名:",
             //     labelStyle: TextStyle(color: Colors.red)
             ),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: "密码:"
                
              ),
              onChanged: (v){
                setState(() {
                  this.passwd = v;
                });
              },
            ),
            SizedBox(height: 10,),
            Container(
              width: double.infinity, //宽度自适应
              child: RaisedButton(
                child: Text("登录"),
                color: Colors.blue,
                textColor: Colors.white,
                onPressed: (){
                    print(this.userName.text);
                    print(this.passwd);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
