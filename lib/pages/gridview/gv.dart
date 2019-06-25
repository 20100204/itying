import 'package:flutter/material.dart';
import '../../data/listdata.dart';

class GviewTest extends StatelessWidget {

  List<Widget> _getData(){
    List<Widget> list = new List();
    for(var i=0;i<20;i++){
      list.add(Container(
        alignment: Alignment.center,
        color: Colors.blue,
        child: Text(
          '这是第${i}条数据',
          style:TextStyle(
            color:Colors.white,
            fontSize:20
          )
        ),
      ));
    }
    return list;
  }

List<Widget> _getData2(){
  var tempList = listData.map((f){
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Color.fromRGBO(233,233,233,0.9),
          width: 1
        )
      ),
      child: Column(
        children: <Widget>[
          Image.network(f['imageUrl']),
          SizedBox(height: 10,),//增加10的间隔
          Text(
            f['title'],
            textAlign: TextAlign.center,
            style:TextStyle(),
            
            ),
        ],
      ),

    );
  });
  return tempList.toList();
}

  @override
  Widget build(BuildContext context) {
    return GridView.count(
        crossAxisCount: 2, //一行有多少列，一行有多少个widget
         crossAxisSpacing: 10,//左右widget间的距离
      //  mainAxisSpacing: 2, //上下widget间的距离
       // childAspectRatio: 0.8,//widget的宽高比列，只能设置这个值，设置widget的height不会起作用，height是内容撑开的
        padding: EdgeInsets.all(10), //
      children: this._getData2()
    );
  }
}