import 'package:flutter/material.dart';

class BtnList extends StatelessWidget{
  @override
    Widget build(BuildContext context) {
      return Column(
        children: <Widget>[
          ListTile(
            onTap: (){

            },
            title: Text(
              '消息通知'
            ),
            trailing: Icon(Icons.chevron_right),
          ),
          Divider(height: 0,),
          ListTile(
            onTap: (){

            },
            title: Text(
              '扫一扫'
            ),
            trailing: Icon(Icons.chevron_right),
          ),
          Divider(height: 0,),
          ListTile(
            onTap: (){
              Navigator.pushNamed(context, '/chat');
            },
            title: Text(
              '聊天室'
            ),
            trailing: Icon(Icons.chevron_right),
          ),
          Divider(height: 0,)
        ],
      );
    }
}