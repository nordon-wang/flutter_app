import 'package:flutter/material.dart';

class UserBtn extends StatelessWidget{
  @override
    Widget build(BuildContext context) {
      return Padding(
        padding: EdgeInsets.symmetric(vertical: 15.0),
        child: Row(
          children: <Widget>[
            PubBtn(Icons.star_border, '收藏', 'collect'),
            PubBtn(Icons.history, '历史', 'collect'),
            PubBtn(Icons.bookmark_border, '作品', 'collect'),
          ],
        ),
      );
    }
}

class PubBtn extends StatelessWidget{
  final IconData icon;
  final String str;
  final String routerName;

  PubBtn(this.icon, this.str, this.routerName);

  @override
    Widget build(BuildContext context) {
      return Expanded(
        child: GestureDetector(
          onTap: (){
            Navigator.pushNamed(context, '/${routerName}');
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