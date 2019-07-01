import 'package:flutter/material.dart';
import 'package:date_format/date_format.dart';
import 'package:flutter_cupertino_date_picker/flutter_cupertino_date_picker.dart';

class ThirdDateDemo extends StatefulWidget {
  @override
  _ThirdDateDemoState createState() => _ThirdDateDemoState();
}

class _ThirdDateDemoState extends State<ThirdDateDemo> {
  DateTime _datetime = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("第三方时间日期组件"),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                InkWell(
                  child: Row(
                    children: <Widget>[
                      Text("${formatDate(_datetime, [
                        yyyy,
                        '年',
                        mm,
                        '月',
                        dd,
                        '日' ,
                        " ",
                        HH,':',nn
                      ])}"),
                      Icon(Icons.arrow_drop_down)
                    ],
                  ),
                  onTap: () {
                    this.showDataPicker();
                  },
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  showDataPicker() {
    DatePicker.showDatePicker(context,
        pickerTheme: DateTimePickerTheme(
        showTitle: true, confirm: Text("确定"), cancel: Text("取消")),
        minDateTime: DateTime.parse("2019-06-28"),
        maxDateTime: DateTime.parse("2123-01-01"),
        initialDateTime: DateTime.now(),
        //dateFormat: "yyyy-MMMM-dd",
       // dateFormat: "yy年M月d日   EEE,H时:m分",
         dateFormat: "yyyy年mm月dd日 ,H时:m分",
        pickerMode: DateTimePickerMode.datetime,
        locale: DateTimePickerLocale.zh_cn, onCancel: () {
      debugPrint("onCancel");
    },
        // onChange: (datetime, List<int> index) {
        //   setState(() {
        //     this._datetime = datetime;
        //   });
        // },
        onConfirm: (dateTime, List<int> index) {
      setState(() {
        this._datetime = dateTime;
      });
    });
  }
}
