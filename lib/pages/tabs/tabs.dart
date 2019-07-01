import 'package:flutter/material.dart';
import './category.dart';
import './setting.dart';
import './home.dart';
class Tabs extends StatefulWidget {
  final  index;
  Tabs({Key key,this.index=0}):super(key:key);
  @override
  _TabsState createState() => _TabsState(index);
}

class _TabsState extends State<Tabs> {
  int currentIndex = 0;
  List<Widget> list = [
    HomePage(),
    Category(),
    Settings(),
  ];
 _TabsState(index){
   this.currentIndex = index;
 }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("app bar"),
      // ),
      body: this.list[currentIndex],
      bottomNavigationBar: BottomNavigationBar( 
        fixedColor: Colors.blue,
        type:BottomNavigationBarType.fixed,//可以有多个按钮
        currentIndex: currentIndex,
        onTap: (int index) {
              setState(() {
                this.currentIndex = index; 
              });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("首页"),
            //   backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            title: Text("分类"),
            // backgroundColor: Colors.pink,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            title: Text("设置"),
            // backgroundColor: Colors.pink,
          )
        ],
      ),
      drawer: Drawer(
        child: Text("zuoce"),
      ),
      endDrawer: Drawer(
        child: Text("youce"),
      ),
    );
  }
}
