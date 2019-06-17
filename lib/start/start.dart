import 'package:flutter/material.dart';

class Start extends StatefulWidget{
  final String token;

  Start(this.token);

  @override
    _Start createState() => _Start();
}


class _Start extends State<Start>{

  _goHome(){
    Future.delayed(Duration(seconds: 3), (){
      // 判断token是否存在 不存在就跳转至登陆页， 否则跳转首页
      print(widget.token);
      if(widget.token == null){
        Navigator.pushNamed(context, '/home');
      }else{
        Navigator.pushNamed(context, '/login');
      }
    });
  }

  @override
    void initState() {
      // TODO: implement initState
      super.initState();
      _goHome();
    }

 @override
    Widget build(BuildContext context) {
      return Container(
        child: Image.asset(
          'images/start1.jpeg',
          fit: BoxFit.cover,
        ),
      );
    }
}