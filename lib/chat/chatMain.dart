import 'package:flutter/material.dart';

class ChatMain extends StatefulWidget{
  @override
    _ChatMain createState() => _ChatMain();
}

class _ChatMain extends State<ChatMain>{

  // 发送消息
  _sendMsg(value){

  }

 @override
    Widget build(BuildContext context) {
      return Column(
        children: <Widget>[
          Expanded(
            child: ListView(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Row(
                    children: <Widget>[
                      SizedBox(
                        width: 40.0,
                        height: 40.0,
                        child: CircleAvatar(
                          backgroundImage: NetworkImage('https://cdn.jsdelivr.net/gh/flutterchina/website@1.0/images/flutter-mark-square-100.png'),
                        ),
                      ),
                      SizedBox(width: 10.0,),
                      Container(
                        padding: EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(224, 239, 251, 1),
                          borderRadius: BorderRadius.circular(8.0)
                        ),
                        child: Text(
                          '你好'
                        ),
                      )
                    ],
                  )
                ),
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(224, 239, 251, 1),
                          borderRadius: BorderRadius.circular(8.0)
                        ),
                        child: Text(
                          '你好'
                        ),
                      ),
                      SizedBox(width: 10.0,),
                      SizedBox(
                        width: 40.0,
                        height: 40.0,
                        child: CircleAvatar(
                          backgroundImage: NetworkImage('https://cdn.jsdelivr.net/gh/flutterchina/website@1.0/images/flutter-mark-square-100.png'),
                        ),
                      ),
                    ],
                  )
                )
              ],
            ),
          ),
          // 输入框
          Container(
            padding: EdgeInsets.all(16.0),
            color: Colors.grey[200],
            child: Container(
              height: 40.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0)
              ),
              child: TextField(
                autofocus: true,
                onSubmitted: (value){
                  print(value);
                  _sendMsg(value);
                },
                decoration: InputDecoration(
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  contentPadding: EdgeInsets.all(10.0)
                ),
              ),
            ),
          )
        ],
      );
    }
}