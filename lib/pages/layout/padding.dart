import 'package:flutter/material.dart';
import '../../data/listdata.dart';

class PaddingLianXi extends StatelessWidget {
  List<Widget> _getData(){
  var tempList = listData.map((f){
    return Container(
      // decoration: BoxDecoration(
      //   border: Border.all(
      //     color: Color.fromRGBO(233,233,233,0.9),
      //     width: 1
      //   )
      // ),
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child:  Image.network(f['imageUrl'],fit:BoxFit.cover),
          ),
        
         // SizedBox(height: 10,),//增加10的间隔
          // Text(
          //   f['title'],
          //   textAlign: TextAlign.center,
          //   style:TextStyle(),
            
          //   ),
        ],
      ),

    );
  });
  return tempList.toList();
}
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      children: this._getData()
    );
  }
}