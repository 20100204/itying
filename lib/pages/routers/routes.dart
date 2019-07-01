import 'package:flutter/material.dart';
import '../../pages/tabs/tabs.dart';
import '../../pages/tabs/search.dart';
import '../../pages/tabs/three.dart';
import '../../pages/user/login.dart';
import '../../pages/user/registerfirst.dart';
import '../../pages/user/registersecond.dart';
import '../../pages/user/regthird.dart';
import '../../pages/tabController.dart';
import '../../pages/form/textfiled.dart';
import '../../pages/form/checkboxdemo.dart';
import '../../pages/form/radio.dart';
import '../../pages/form/formdemo.dart';
import '../../pages/datetime/officess.dart';
import '../../pages/datetime/third.dart';
import '../../pages/swiper.dart';
import '../../pages/dialog/office.dart';
import '../../pages/dialog/third.dart';
import '../../pages/http/http.dart';
import '../../pages/http/dio.dart';
import '../../pages/refresh/news.dart';


final routers = {
  "/":(context)=>Tabs(),
  "/search": (context) => SearchPage(),
  "/three": (context, {arguments}) => ThreeLevel(arguments: arguments),
  "/login":(context)=>Login(),
  "/regfirst":(context)=>Regfirst(),
  "/regsecond":(context)=>RegSecond(),
   "/regthird":(context)=>Regthird(),
   "/tabbar":(context)=>TabBarControllerPages(),
   "/textdemo":(context)=>TextFieldDemo(),
   "/checkdemo":(context)=>CheckBoxDemo(),
   "/radiodemo":(context)=>RadioDemo(),
   "/formdemo":(context)=>FormDemo(),
   "/officedate":(context)=>DateOfficeDemo(),
   "/thiredate":(context)=>ThirdDateDemo(),
   "/swiper":(context)=>SwiperDemo(),
   "/officedialog":(context)=>OfficeDialogDemo(),
   "/httpdemo":(context)=>HttpDemo(),
   "/diodemo":(context)=>DioDemo(),
   "/refreshdemo":(context)=>NewsDemo(),
   

};
var onGenerateRoutesss = (RouteSettings settings) {
  final String name = settings.name;
  final Function pageContentBuilder = routers[name];
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = MaterialPageRoute(
          builder: (context) =>
              pageContentBuilder(context, arguments: settings.arguments));
      return route;
    } else {
      final Route route =
          MaterialPageRoute(builder: (context) => pageContentBuilder(context));
      return route;
    }
  }
};
