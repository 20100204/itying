import 'package:flutter/material.dart';

class Category extends StatefulWidget {
  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 8,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          
          title: Row(
            children: <Widget>[
              Expanded(
                child: TabBar(
                  isScrollable: true, //是否可以滚动
                  indicatorWeight: 1, //高度
                  indicatorColor: Colors.white,
                  labelColor: Colors.red,
                  unselectedLabelColor: Colors.white,//未选中的颜色
                  indicatorSize:TabBarIndicatorSize.label,

                  tabs: <Widget>[
                    Tab(
                      text: "热销",
                    ),
                    Tab(
                      text: "推荐",
                    ),
                     Tab(
                      text: "推荐",
                    ),
                     Tab(
                      text: "推荐",
                    ),
                     Tab(
                      text: "推荐",
                    ), Tab(
                      text: "推荐",
                    ),
                     Tab(
                      text: "推荐",
                    ),
                     Tab(
                      text: "推荐",
                    ),
                  ],
                ),
              ),
            ],
          ),
          // bottom: TabBar(
          //   tabs: <Widget>[
          //     Tab(text: "热销",),Tab(text: "推荐",)
          //   ],
          // ),
        ),
        body: TabBarView(
          children: <Widget>[
            ListTile(
              title: Text("热销"),
            ),
            ListTile(
              title: Text("推荐"),
            ),
             ListTile(
              title: Text("热销"),
            ),
            ListTile(
              title: Text("推荐"),
            ),
             ListTile(
              title: Text("热销"),
            ),  ListTile(
              title: Text("热销"),
            ),
            ListTile(
              title: Text("推荐"),
            ),
             ListTile(
              title: Text("热销"),
            ),
             
          ],
        ),
      ),
    );
  }
}
