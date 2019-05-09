import 'package:flutter/material.dart';

class Privilege extends StatefulWidget{
  @override
    _Privilege createState() => _Privilege();
}

class _Privilege extends State<Privilege>{
 @override
    Widget build(BuildContext context) {
      return Container(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            ListTile(
              title: Text(
                '认证特权'
              ),
            ),
            Divider(height: 10.0,),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.blue[100],
                child: Icon(Icons.print, color: Colors.blue,),
              ),
              title: Text(
                '独家标识'
              ),
              subtitle: Text(
                '享有独家标志'
              ),
            ),
            Divider(height: 10.0,),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.blue[100],
                child: Icon(Icons.satellite, color: Colors.blue,),
              ),
              title: Text(
                '优先推荐'
              ),
              subtitle: Text(
                '内容优先推荐'
              ),
            ),
            Divider(height: 10.0,),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.blue[100],
                child: Icon(Icons.print, color: Colors.blue,),
              ),
              title: Text(
                '独家标识'
              ),
              subtitle: Text(
                '享有独家标志'
              ),
            ),
          ],
        ),
      );
    }
}