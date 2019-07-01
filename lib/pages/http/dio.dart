import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:dio/dio.dart';

class DioDemo extends StatefulWidget {
  @override
  _DioDemoState createState() => _DioDemoState();
}

class _DioDemoState extends State<DioDemo> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this._get1();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("dio demo"),
      ),
    );
  }

  _get1() async {
    var url = "http://a.itying.com/api/productlist";
    Response resp = await Dio().get(url);
    print(resp.data);
  }
}
