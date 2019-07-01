import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:dio/dio.dart';

class NewsDemo extends StatefulWidget {
  @override
  _NewsDemoState createState() => _NewsDemoState();
}

class _NewsDemoState extends State<NewsDemo> {
  List _list = [];
  int _page = 1;
  bool hasMore = true;
  ScrollController _scrollController = ScrollController();
  @override
  void initState() {
    _scrollController.addListener(() {
      print(_scrollController.position.pixels); //获取滚动条下拉的距离
      print(_scrollController.position.maxScrollExtent); //获取整个页面的高度
      //上拉分页加载更多
      if (_scrollController.position.pixels >
          _scrollController.position.maxScrollExtent - 30) {
        this._page++;
        this._getDate();
      }
    });
    // TODO: implement initState
    this._getDate();
    super.initState();
  }

  _getDate() async {
    if (hasMore) {
      var url =
          "http://www.phonegap100.com/appapi.php?a=getPortalList&catid=20&page=${this._page}}";
      Response resp = await Dio().get(url);
      print(resp.data);
      var res = json.decode(resp.data)['result'];
      setState(() {
        if (_page == 1) {
          this._list = res;
        } else {
          this._list.addAll(res);
        }
      });
      //判断是否最后一页
      if (res.length < 20) {
        setState(() {
          this.hasMore = false;
        });
      }
    } else {}
  }

  Future<void> _onrefresh() async {
    print("下拉刷新");
    await Future.delayed(Duration(milliseconds: 2000), () {
      print("请求数据完成");
      _getDate();
    });
    if (this._page > 1) {
      this._page = 1;
    }
    this._getDate();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("上拉，下拉刷新"),
      ),
      body: this._list.length > 0
          ? RefreshIndicator(
              onRefresh: this._onrefresh,
              child: ListView.builder(
                controller: _scrollController,
                itemCount: this._list.length,
                itemBuilder: (context, index) {
                  if (index + 1 == this._list.length) {
                    return _getMoreWidget();
                  } else {
                    return Column(
                      children: <Widget>[
                        ListTile(
                          title: Text(
                            this._list[index]["title"],
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Divider(),
                      ],
                    );
                  }
                },
              ),
            )
          : _getMoreWidget(),
    );
  }

//加载中。。。
  Widget _getMoreWidget() {
    if(hasMore){
 return Center(
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              "加载中...",
              style: TextStyle(fontSize: 16.0),
            ),
            CircularProgressIndicator(
              strokeWidth: 1.0,
            )
          ],
        ),
      ),
    );
    }else{
      return Center(child:Text("我是有底线的。。。",style:TextStyle(color: Colors.black12)));
    }
   
  }
}
