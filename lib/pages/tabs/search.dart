import 'package:flutter/material.dart';
import './three.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: DefaultTabController(
          length: 3,
          child: Scaffold(
            floatingActionButton: FloatingActionButton(
             backgroundColor: Colors.red,
             foregroundColor: Colors.blue,
 
              child: Text("返回"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            floatingActionButtonLocation: FloatingActionButtonLocation.startTop,//浮动按钮的位置
            appBar: AppBar(
              centerTitle: true,
              title: Text("search"),
              backgroundColor: Colors.green, //导航背景色
              //  leading: Icon(Icons.menu), //增加图标
              //  leading: IconButton(
              //    icon: Icon(Icons.menu),
              //    onPressed: (){
              //      print("menu");
              //    },
              //  ),
              // actions: <Widget>[
              //   //导航栏右侧的图标

              //   IconButton(
              //     icon: Icon(Icons.search),
              //   ),
              //   IconButton(
              //     icon: Icon(Icons.memory),
              //   ),
              // ],
              bottom: TabBar(
                tabs: <Widget>[
                  Tab(text: "热门"),
                  Tab(text: "推荐"),
                  Tab(text: "返回")
                ],
              ),
            ),
            body: TabBarView(
              children: <Widget>[
                ListView(
                  children: <Widget>[
                    RaisedButton(
                      textColor: Colors.red, //文本颜色
                      color: Colors.blue, //字体颜色
                      child: Text("普通按钮"),
                      onPressed: () {
                        print("普通按钮");
                      },
                    ),
                    SizedBox(height: 40),
                    RaisedButton(
                      elevation: 15, //值越大阴影越大
                      textColor: Colors.red, //文本颜色
                      color: Colors.blue, //字体颜色
                      child: Text("阴影按钮"),
                      onPressed: () {
                        print("阴影按钮");
                      },
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          //设置按钮的宽度和高度
                          width: 100,
                          height: 50,
                          child: RaisedButton(
                            shape: CircleBorder(
                                //圆形按钮
                                ),
                            child: Text("宽和高"),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        RaisedButton.icon(
                          //按钮图标
                          shape: RoundedRectangleBorder(
                              //按钮的形状
                              borderRadius: BorderRadius.circular(10) //圆角按钮

                              ),

                          color: Colors.blue,
                          textColor: Colors.white,
                          icon: Icon(Icons.search),
                          label: Text("图标按钮"),
                          onPressed: () {},
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        FlatButton(
                          child: Text("扁平"),
                          color: Colors.blue,
                          textColor: Colors.red,
                        ),
                      ],
                    ),
                    ButtonBar(
                      children: <Widget>[
                        RaisedButton(
                          child: Text("s"),
                        ),
                        RaisedButton(
                          child: Text("ss"),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Expanded(
                          child: OutlineButton(
                            child: Text("扁平"),
                            // color:Colors.blue,
                            textColor: Colors.red,
                          ),
                        ),
                        MyButton(text: "自定义",height: 100.0,)
                      ],
                    )
                  ],
                ),
                RaisedButton(
                  child: Text("跳到三级页面"),
                  onPressed: () {
                    // Navigator.of(context).push(MaterialPageRoute(
                    //     builder: (context){
                    //       return ThreeLevel(title:"我是参数");
                    //     }

                    // ));
                    Navigator.pushNamed(context, "/three",
                        arguments: {"title": "as"});
                  },
                ),
              ],
            ),
          ),
        ));
  }
}

//自定义按钮
class MyButton extends StatelessWidget {
  final text;
  final onPressed;
  final width;
  final height;
  MyButton({this.text = "", this.onPressed = null,this.height=30.0,this.width=80.0});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: this.width,
      height: this.height,
        child: RaisedButton(
      child: Text(this.text),
      onPressed: this.onPressed,
    ));
  }
}
