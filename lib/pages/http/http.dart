import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as HTTP;

class HttpDemo extends StatefulWidget {
  @override
  _HttpDemoState createState() => _HttpDemoState();
}

class _HttpDemoState extends State<HttpDemo> {
  List _list = [];
  var url = "http://a.itying.com/api/productlist";
  @override
  void initState() {
    // TODO: implement initState
    this._getData();
    super.initState();
  }

  _getData() async {
    var res = await HTTP.get(url);
    if (res.statusCode == 200) {
      print(res.body is List);
      print(res.body is Map);
      print(res.body is String);
      print(res.body);
      setState(() {
        this._list = json.decode(res.body)["result"];
        //  print(_list is List);
        //  print(_list is Map);
        //  print(_list is String);
      });
    } else {
      print("失败${res.statusCode}");
    }
  }

  Widget _wg1() {
    return this._list.length > 0
        ? ListView(
            children: this._list.map((v) {
              return ListTile(
                title: Text(v['title']),
              );
            }).toList(),
          )
        : Text("加载中......");
  }

  Widget _wg2() {
    return this._list.length>0?ListView.builder(
      itemCount: this._list.length,
      itemBuilder: (context,index){
        return ListTile(
          title: Text(this._list[index]["title"]),
        );
      },
    ):Text("加载中......");
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("http 请求数据demo")), 
      //  body: this._wg1());
         body: this._wg2());
  }
}
