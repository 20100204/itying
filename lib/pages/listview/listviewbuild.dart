import 'package:flutter/material.dart';
import '../../data/listdata.dart';

class ListViewBuilderss extends StatelessWidget {
  List list = new List();

  Widget _getListData(context, index) {
    return ListTile(
      leading: Image.network(
        listData[index]['imageUrl'],
        width: 70,
      ),
      title: Text(listData[index]['title']),
      subtitle: Text(listData[index]['author']),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: listData.length, itemBuilder: this._getListData);
  }
}
