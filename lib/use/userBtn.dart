import 'package:flutter/material.dart';
import 'package:flutter_app/persional/collect.dart';
import 'package:flutter_app/persional/work.dart';

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
            // 静态路由 不能传递参数
            // Navigator.pushNamed(context, '/${routerName}');

            // 动态路由 可以传递参数
            if(str == '作品'){
              Navigator.push(context, MaterialPageRoute(
                builder: (context) => Work(str)
              ));
            }else{
              Navigator.push(context, MaterialPageRoute(
                builder: (context) => Collect(str)
              ));
            }

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