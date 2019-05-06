import 'package:flutter/material.dart';

class UserInfo extends StatefulWidget{
  @override
    _UserInfo createState() => _UserInfo();
}

class _UserInfo extends State<UserInfo>{
 @override
    Widget build(BuildContext context) {
      return Container(
        color: Colors.blue,
        padding: EdgeInsets.only(top: 80.0, bottom: 20.0, left: 15.0),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    SizedBox(
                      width: 60.0,
                      height: 60.0,
                      child: CircleAvatar(
                        backgroundImage: NetworkImage('https://cdn.jsdelivr.net/gh/flutterchina/website@1.0/images/flutter-mark-square-100.png'),
                      ),
                    ),
                    SizedBox(width: 14.0,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'nordon',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            fontWeight: FontWeight.w400
                          ),
                        ),
                        SizedBox(height: 6.0,),
                        GestureDetector(
                          onTap: (){

                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 10.0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15.0)
                            ),
                            child: Text(
                              '认证',
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: 12.0,
                                fontWeight: FontWeight.w400
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
                Container(
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(0, 0, 0, 0.3),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(100.0),
                      bottomLeft: Radius.circular(100.0)
                    )
                  ),
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.book, color: Colors.white,),
                      SizedBox(width: 6.0,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            '今日',
                            style:TextStyle(
                              color:Colors.white,
                              fontSize:12.0
                            )
                          ),Text(
                            '时间',
                            style:TextStyle(
                              color:Colors.white,
                              fontSize:12.0
                            )
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
            Row(
              children: <Widget>[

              ],
            )
          ],
        ),
      );
    }
}