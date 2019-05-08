import 'package:flutter/material.dart';
import 'package:flutter_app/chat/chatMain.dart';

class Chat extends StatefulWidget{
  @override
    _Chat createState() => _Chat();
}

class _Chat extends State<Chat>{
 @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text(
            '聊天室'
          ),
          elevation: 0.0,
        ),
        body: ChatMain(),
      );
    }
}