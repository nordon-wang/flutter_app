import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class SwiperStart extends StatefulWidget{
  final String token;

  SwiperStart(this.token);

  @override
    _SwiperStart createState() => _SwiperStart();
}

class _SwiperStart extends State<SwiperStart>{

  final List<String> imgList = [
    'images/start1.jpeg',
    'images/start2.jpg',
    'images/start3.jpg',
  ];

 @override
    Widget build(BuildContext context) {
      return Container(
        child: new Swiper(
          itemBuilder: (BuildContext context,int index){
            if(index == imgList.length - 1){
              // return GestureDetector(
              //   onTap: (){
              //     print('最后一张图片片啦');
              //   },
              //   child: Image.asset(
              //     imgList[index],
              //     fit: BoxFit.cover,
              //   ),
              // );
              return Stack(
                children: <Widget>[
                  Image.asset(
                    imgList[index],
                    fit: BoxFit.cover,
                    height: double.infinity,
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      margin: EdgeInsets.only(bottom: 40.0),
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.blue,
                        ),
                        borderRadius: BorderRadius.circular(30.0)
                      ),
                      child: FlatButton(
                        onPressed: (){
                          print('最后一张图片片啦');
                          Navigator.pushNamedAndRemoveUntil(context, '/home', (route) => false);
                        },
                        child: Text(
                          '开始啦~~',
                          style: TextStyle(
                            fontSize: 22.0,
                            color: Colors.blue,
                            fontWeight: FontWeight.normal
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              );
            }else{
              return Image.asset(
                imgList[index],
                fit: BoxFit.cover,
              );
            }
          },
          loop: false,
          itemCount: imgList.length,
          pagination: new SwiperPagination(),
          // control: new SwiperControl(),
        ),
      );
    }
}