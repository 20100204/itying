import 'package:flutter/material.dart';
import 'package:date_format/date_format.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class DateOfficeDemo extends StatefulWidget {
  @override
  _DateOfficeDemoState createState() => _DateOfficeDemoState();
}

class _DateOfficeDemoState extends State<DateOfficeDemo> {
  DateTime nows = DateTime.now();
  TimeOfDay notime = TimeOfDay(hour: 15,minute: 36);
  
  @override
  void initState() {
    // TODO: implement initState
    // print(this.nows);
    //  print(nows.millisecondsSinceEpoch);
    //  print(DateTime.fromMicrosecondsSinceEpoch(1561619798747));
    //   print(formatDate(DateTime.now(), [yyyy,'年',mm,'月',dd,'日',hh,":",nn,":",ss,""]));
    //  super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("官方和第三方的时间组件"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          InkWell(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("${formatDate(nows,[yyyy,'年',mm,'月',dd,'日'])}"),
                Icon(Icons.arrow_drop_down)
              ],
            ),
            onTap: this._showDataPicker,
          ),
          InkWell(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("${notime.format(context)}"),
                Icon(Icons.arrow_drop_down),
              ],
            ),
            onTap:this._showTimePicker ,
          ),
        ],
      ),
    );
  }

  _showDataPicker() async {
   var res =  await showDatePicker(
      context: context,
      initialDate: this.nows,
      firstDate: DateTime(1978),
      lastDate: DateTime(2190),
      locale: Locale('zh')

    ) ;
   setState(() {
    this.nows = res; 
   });
  }
  _showTimePicker() async {
      var res = await showTimePicker(
          context: context,
          initialTime: notime,
          
          
      );
      setState(() {
       this.notime = res; 
      });
  }

}
