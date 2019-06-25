import 'package:flutter/material.dart';
import './pages/listview/jingtai.dart';
import './pages/listview/dongtai.dart';
import './pages/listview/listviewbuild.dart';
import './pages/gridview/gv.dart';
import './pages/gridview/gv2.dart';
import './pages/layout/padding.dart';
import './pages/layout/row.dart';
import './pages/layout/column.dart';
import './pages/layout/expanded.dart';

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
          body: ExpandedLianXi(),
        ));
  }
}
 