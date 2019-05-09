import 'package:flutter/material.dart';

class InputBox extends StatefulWidget{
  @override
    _InputBox createState() => _InputBox();
}

class _InputBox extends State<InputBox>{
 @override
    Widget build(BuildContext context) {
      return Container(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: TextField(
                decoration: InputDecoration(
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  hintText: '请输入真实姓名',
                  hintStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 14.0
                  )
                ),
                onChanged: (vlaue){
                  
                },
              ),
            ),
            Divider(height: 0,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: TextField(
                decoration: InputDecoration(
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  hintText: '请输入合法用户名',
                  hintStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 14.0
                  )
                ),
              ),
            ),
            Divider(height: 0,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: TextField(
                decoration: InputDecoration(
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  hintText: '请输入所在行业',
                  hintStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 14.0
                  )
                ),
              ),
            ),
            Divider(height: 0,),
          ],
        ),
      );
    }
}