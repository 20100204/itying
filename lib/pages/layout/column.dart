import 'package:flutter/material.dart';

class ColumnLianXi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600.0,
      width:400.0,
      color: Colors.green,
      child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly, //主轴的排序方式
       crossAxisAlignment: CrossAxisAlignment.center, //x轴的排序方式
      children: <Widget>[
        IconContainer(
          Icons.home,
          color: Colors.pink,
          size: 32.0,
        ),
        IconContainer(
          Icons.save,
          color: Colors.blue,
          size: 42.0,
        ),
        IconContainer(
          Icons.card_giftcard,
          color: Colors.yellow,
          size: 52.0,
        ),
      ],
    ) ,
    )
    
   ;
  }
}

class IconContainer extends StatelessWidget {
  double size = 32.0;
  Color color = Colors.red;
  IconData icon;
  IconContainer(this.icon, {this.color, this.size}) {}
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100.0,
        width: 100.0,
        color: this.color,
        child: Center(
          child: Icon(this.icon, size: this.size, color: Colors.white),
        ));
  }
}
