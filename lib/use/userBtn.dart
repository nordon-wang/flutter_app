import 'package:flutter/material.dart';

class UserBtn extends StatelessWidget{
  @override
    Widget build(BuildContext context) {
      return Padding(
        padding: EdgeInsets.symmetric(vertical: 15.0),
        child: Row(
          children: <Widget>[
            PubBtn(Icons.star_border, '收藏'),
            PubBtn(Icons.history, '历史'),
            PubBtn(Icons.bookmark_border, '作品'),
          ],
        ),
      );
    }
}

class PubBtn extends StatelessWidget{
  final IconData icon;
  final String str;

  PubBtn(this.icon, this.str);

  @override
    Widget build(BuildContext context) {
      return Expanded(
        child: GestureDetector(
          onTap: (){
            
          },
          child: Column(
            children: <Widget>[
              Icon(icon, size: 34.0,),
              SizedBox(height: 4.0,),
              Text(
                str,
                style: TextStyle(
                  fontSize: 16.0
                ),
              )
            ],
          ),
        )
      );
    }
}