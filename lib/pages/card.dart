import 'package:flutter/material.dart';
import '../data/listdata.dart';

class CardLianXi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  this._get2();
  }
  Widget _get2(){
      return ListView.builder(
          itemCount: listData.length,
          itemBuilder: (context,index){
            return Card(
              margin: EdgeInsets.all(10),
              child: Column(
                children: <Widget>[
                  AspectRatio(
                    aspectRatio: 20.0/9.0,
                    child:  Image.network(listData[index]['imageUrl'],fit:BoxFit.cover),
                  ),
                 
                  ListTile(
                    // leading: ClipOval(
                    //   child:Image.network(listData[index]['imageUrl'],fit:BoxFit.cover,height: 60,width:60,),
                    // ),
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(listData[index]['imageUrl']),  
                    ),
                    title: Text(listData[index]['title']),
                    subtitle: Text(listData[index]['author'],overflow: TextOverflow.ellipsis,maxLines: 2,),
                  )
                ],
              ),
            );
          },
      );
  }
  Widget _get1(){
    return ListView(
      children: <Widget>[
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text("zhangsan"),
                subtitle: Text("高级工程师"),
                
              ),
              ListTile(title: Text("电话:XXXXXXXXXXXXXXXXX"),),
              ListTile(title: Text("地址：XXXXXXXXXXXXXXXXXX"),)
            ],
          )
        ),
          Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text("zhangsan"),
                subtitle: Text("高级工程师"),
                
              ),
              ListTile(title: Text("电话:XXXXXXXXXXXXXXXXX"),),
              ListTile(title: Text("地址：XXXXXXXXXXXXXXXXXX"),)
            ],
          )
        ),
          Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text("zhangsan"),
                subtitle: Text("高级工程师"),
                
              ),
              ListTile(title: Text("电话:XXXXXXXXXXXXXXXXX"),),
              ListTile(title: Text("地址：XXXXXXXXXXXXXXXXXX"),)
            ],
          )
        ),
          Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text("zhangsan"),
                subtitle: Text("高级工程师"),
                
              ),
              ListTile(title: Text("电话:XXXXXXXXXXXXXXXXX"),),
              ListTile(title: Text("地址：XXXXXXXXXXXXXXXXXX"),)
            ],
          )
        ),
      ],
    );
  }
}