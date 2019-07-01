import 'package:flutter/material.dart';

class StateFullWidgetLianxi extends StatefulWidget {
  @override
  _StateFullWidgetLianxiState createState() => _StateFullWidgetLianxiState();
}

class _StateFullWidgetLianxiState extends State<StateFullWidgetLianxi> {
  List list = new List();
   int cn =0;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column( 
           children: <Widget>[
              Column(
                children:   this.list.map((f){
                      return ListTile(
                        title: Text(f), 
                      );
                  }).toList(),
               
              ),
              SizedBox(height:10),
              RaisedButton(
                  child: Text("按钮"),
                  onPressed: (){
                    this.cn ++;
                    setState(() {
                      this.list.add("2222");
                    });
                      
                  },
              )


           ]
        
      ),
    );
  }
}




//无状态组件
class QQ extends StatelessWidget {

  int CN =0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          SizedBox(height: 100,),
          Text("niaho${CN}"),
          SizedBox(height: 10,),
          RaisedButton(
            child: Text("anniu"),
            onPressed: (){
               
                this.CN++;
                print(this.CN);
            },
          )
        ],
      ),
    );
  }
}