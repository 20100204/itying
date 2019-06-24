import 'package:flutter/material.dart';
import '../../data/listdata.dart';


//动态列表
class Dongtai extends StatelessWidget {

 

  //
  List<Widget> _getdata2(){
     var tempList = listData.map((f){
        return ListTile(
          leading: Image.network(f['imageUrl'],width: 70,),
          title: Text(f['title']),
          subtitle: Text(f['author']),
        );
      });
      return tempList.toList();
  } 
 
  //自定义方法
  List<Widget> _getData() {
    List<Widget> list = new List();
    for (var i = 1; i < 15; i++) {
      list.add(
        ListTile(
          title: Text("我是第${i}个列表..........."),
        ),
      );
    }
    return list;
    // return [
    //     ListTile(
    //       title: Text("我是一个列表..........."),
    //     ),
    //       ListTile(
    //       title: Text("我是一个列表..........."),
    //     ),
    //       ListTile(
    //       title: Text("我是一个列表..........."),
    //     ),
    //       ListTile(
    //       title: Text("我是一个列表..........."),
    //     ),
    //       ListTile(
    //       title: Text("我是一个列表..........."),
    //     ),
    //       ListTile(
    //       title: Text("我是一个列表..........."),
    //     ),
    // ];
  }

  @override
  Widget build(BuildContext context) {
    //return ListView(children: this._getData());
    return ListView(children: this._getdata2());
  }
}
