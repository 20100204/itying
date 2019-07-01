import 'package:flutter/material.dart';

class TabBarControllerPages extends StatefulWidget {
  @override
  _TabBarControllerPagesState createState() => _TabBarControllerPagesState();
}

class _TabBarControllerPagesState extends State<TabBarControllerPages> with SingleTickerProviderStateMixin {
  TabController _tabController ;

@override
  void initState() {
    // TODO: implement initState
    _tabController = new TabController(
        vsync: this,
        length: 2
    );
    _tabController.addListener((){
        print(_tabController.index);
    } );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("TabbarcontrollerPage"),
          bottom: TabBar(
            controller: this._tabController,
            tabs: <Widget>[
              Tab(text: "热销",),Tab(text:"推荐")
            ],
          ),
        ),
        body: TabBarView(
          controller: this._tabController,
          children: <Widget>[
            Center(child: Text("热销"),),
              Center(child: Text("推荐"),),
          ],
        ),
    );
  }
}