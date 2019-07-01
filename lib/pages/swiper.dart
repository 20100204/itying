import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class SwiperDemo extends StatefulWidget {
  @override
  _SwiperDemoState createState() => _SwiperDemoState();
}

class _SwiperDemoState extends State<SwiperDemo> {
  List<Map> listImage = [
    {
      "url": "https://www.itying.com/images/flutter/1.png",
    },
    {
      "url": "https://www.itying.com/images/flutter/2.png",
    },
    {
      "url": "https://www.itying.com/images/flutter/3.png",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("swiper demo test"),
        ),
        body: Column(
          children: <Widget>[
            Container(
          //    height: 200,
              child:AspectRatio(
                aspectRatio: 16/9,
                child:Swiper(
                  autoplay: true,
                //  pagination: SwiperPagination(),
                control: SwiperControl(color: Colors.white, size: 20),
                itemCount: this.listImage.length,
                itemBuilder: (BuildContext context, int index) {
                  return Image.network(
                    this.listImage[index]['url'],
                    fit: BoxFit.fill,
                  );
                },
              ),
              )
              
            
            )
          ],
        ));
  }
}
