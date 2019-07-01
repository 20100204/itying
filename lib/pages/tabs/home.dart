import 'package:flutter/material.dart';
import './search.dart';
import 'dart:convert';
import 'package:http/http.dart' as HTTP;

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState

    super.initState();
    Map UserInfo = {"username": "zs", "age": 20};
    print(json.encode(UserInfo));
    var a = json.encode(UserInfo);
    print(UserInfo is Map);
    print(a is String);
    var b = '{"username":"zs","age":20}';

    print(b is String);
    Map u = json.decode(b);
    print(u is Map);
    print(u["age"]);
  }

_getData() async{
   var url = "a.itying.com/api/productlist";
}
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: <Widget>[
         SizedBox(
          height: 50,
        ),
        RaisedButton(
          child: Text("上拉下拉刷新"),
          onPressed: (){
            Navigator.pushNamed(context, "/refreshdemo");
          },
        ),
        SizedBox(
          height: 50,
        ),
        RaisedButton(
          child: Text("dio demo"),
          onPressed: (){
                Navigator.pushNamed(context, "/diodemo");
          },
        ),
        SizedBox(
          height: 50,
        ),
        RaisedButton(
            child: Text("http post 方法请求数据"),
          onPressed: (){
            
          },
        ),
        SizedBox(
          height: 50,
        ),
        RaisedButton(
          child: Text("首页跳转到搜索页面"),
          onPressed: () {
            //  Navigator.of(context).push(MaterialPageRoute(
            //    builder: (context)=>SearchPage()
            //  ));
            Navigator.pushNamed(context, "/search");
          },
        ),
        SizedBox(
          height: 40,
        ),
        RaisedButton(
          child: Text("TabController定义tab切换"),
          onPressed: () {
            Navigator.pushNamed(context, "/tabbar");
          },
        )
      ],
    ));
  }
}
