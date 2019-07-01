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
import './pages/layout/stack.dart';
import './pages/aspectradio.dart';
import './pages/card.dart';
import './pages/wrap.dart';
import './pages/statefullwidget.dart';
import './pages/tabs/tabs.dart';
import './pages/routers/routes.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
 
    return MaterialApp(
      // localizationsDelegates:[
      //  GlobalMaterialLocalizations.delegate,
      //  GlobalWidgetsLocalizations.delegate,
       
      // ] ,
      // supportedLocales: [
      //   const Locale('zh','CH'),
      //   const Locale('en','US'),
      // ],
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.pink),
      home: Tabs(),
      initialRoute: "/",
      onGenerateRoute: onGenerateRoutesss,
     // routes: {},
    );
  }
}
