import 'package:flutter/material.dart';

class ApproveContent extends StatefulWidget{
  @override
    _ApproveContent createState() => _ApproveContent();
}

class _ApproveContent extends State<ApproveContent>{
 @override
    Widget build(BuildContext context) {
      return Container(
        color: Colors.white,
        margin: EdgeInsets.only(bottom: 10.0),
        child: Column(
          children: <Widget>[
            ListTile(
              title: Text(
                '申请条件'
              ),
            ),
            Divider(height: 0,),
            ListTile(
              title: Text(
                '有清晰的头像',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14.0
                ),
              ),
              trailing: Text(
                '已完成',
                style: TextStyle(
                  fontSize: 14.0
                ),
              ),
            ),
            Divider(height: 0,),
            ListTile(
              title: Text(
                '合法的用户名',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14.0
                ),
              ),
              trailing: Text(
                '已完成',
                style: TextStyle(
                  fontSize: 14.0
                ),
              ),
            ),
            Divider(height: 0,),
            ListTile(
              title: Text(
                '绑定手机',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14.0
                ),
              ),
              trailing: Text(
                '未完成',
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.blue
                ),
              ),
            ),
            Divider(height: 0,),
            ListTile(
              title: Text(
                '发布内容',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14.0
                ),
              ),
              trailing: Text(
                '已完成',
                style: TextStyle(
                  fontSize: 14.0
                ),
              ),
            )
          ],
        ),
      );
    }
}