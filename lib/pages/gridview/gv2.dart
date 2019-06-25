import 'package:flutter/material.dart';
import '../../data/listdata.dart';

class GviewTwo extends StatelessWidget {
  List<Widget> _getData() {
    var tempList = listData.map((f) {
      return Container(
        child: Column(
          children: <Widget>[
            Image.network(f['imageUrl']),
            SizedBox(
              height: 10,
            ), //增加10的间隔
            Text(
              f['title'],
              textAlign: TextAlign.center,
              style: TextStyle(),
            ),
          ],
        ),
      );
    });
    return tempList.toList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, //一行有多少列，一行有多少个widget
          crossAxisSpacing: 10, //左右widget间的距离
          //  mainAxisSpacing: 2, //上下widget间的距离
          // childAspectRatio: 0.8,//widget的宽高比列，只能设置这个值，设置widget的height不会起作用，height是内容撑开的
        ),
        itemCount: listData.length,
        itemBuilder: (context, index) {
          return Container(
            child: Column(
              children: <Widget>[
                Image.network(listData[index]['imageUrl']),
                SizedBox(
                  height: 10,
                ), //增加10的间隔
                Text(
                  listData[index]['title'],
                  textAlign: TextAlign.center,
                  style: TextStyle(),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
