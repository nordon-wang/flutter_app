import 'package:flutter/material.dart';

// 搜索组件
class SearchBox extends StatelessWidget{
  @override
    Widget build(BuildContext context) {
      return GestureDetector(  // GestureDetector 可以点击
        onTap: (){
          print('点击搜索');
          Navigator.pushNamed(context, '/search');
        },
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 8.0),
          // padding: EdgeInsets.only(top:10.0),
          margin: EdgeInsets.symmetric(horizontal: 25.0),
          decoration: BoxDecoration(
            color: Color.fromRGBO(255, 255, 255, 0.2),
            borderRadius: BorderRadius.circular(18.0)
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.search),
              Text(
                '搜索',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.normal
                ),
              )
            ],
          ),
        ),
      );
    }
}