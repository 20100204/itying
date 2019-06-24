import 'package:flutter/material.dart';
import './pages/listview/jingtai.dart';
import './pages/listview/dongtai.dart';
import './pages/listview/listviewbuild.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.pink),
        home: Scaffold(
          appBar: AppBar(
            title: Text("app bar"),
          ),
          body: Dongtai(),
        ));
  }
}
 