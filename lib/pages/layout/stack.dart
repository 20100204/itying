import 'package:flutter/material.dart';
import './column.dart';

class StackLianXi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return this._get3();
  }

 
 Widget _get3(){
      return Center(
      child: Container(
        height: 400,
        width: 300,
        color: Colors.red,
        child: Stack(
          // alignment: Alignment(0, 0), 
          children: <Widget>[
            Positioned(
              left: 10,
              top:10,
              child: IconContainer(Icons.search, color: Colors.blue, size: 30),
            ),
            Positioned(
               left: 10,
              top:120,
              child: IconContainer(Icons.search, color: Colors.black, size: 40),
            ),
             Positioned(
              left: 10,
              top:230,
              child:   IconContainer(Icons.home, color: Colors.orange, size: 30),
            ),
            
         
          ],
        ),
      ),
    );
 }
  Widget _get2() {
    return Center(
      child: Container(
        height: 400,
        width: 300,
        color: Colors.red,
        child: Stack(
          // alignment: Alignment(0, 0),

          children: <Widget>[
            Align(
              alignment: Alignment(1,1),
              child: IconContainer(Icons.search, color: Colors.blue, size: 30),
            ),
             Align(
              alignment: Alignment(0,0),
              child: IconContainer(Icons.search, color: Colors.black, size: 40),
            ),
             Align(
              alignment: Alignment(-1,-1),
              child:   IconContainer(Icons.home, color: Colors.orange, size: 30),
            ),
            
         
          ],
        ),
      ),
    );
  }

  Widget _getW1() {
    return Center(
      child: Stack(
        //alignment: Alignment.centerRight, //所有组件的对七方式
        alignment: Alignment(0.3, 0.3), //所有组件的对七方式
        children: <Widget>[
          Container(
            height: 400,
            width: 300,
            color: Colors.red,
          ),
          Text("111111111111"),
        ],
      ),
    );
  }
}
