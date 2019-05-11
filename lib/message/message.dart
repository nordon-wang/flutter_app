import 'package:flutter/material.dart';

class Message extends StatefulWidget{
  @override
    _Message createState() => _Message();
}

class _Message extends State<Message>{
 @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text(
            'Message'
          ),
          elevation: 0,
        ),
        body: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      SizedBox(
                        width: 40.0,
                        height: 40.0,
                        child: CircleAvatar(
                          backgroundImage: NetworkImage('https://wx.qlogo.cn/mmopen/vi_32/C1ZwROol5U2XQCEgpN4dnVXOO74Qwnic4uKq8XTl5tMUTGia6O6f6zlr9stR2M9SXRbmtZyRjPWCibRydicico9biaPg/132'),
                        ),
                      ),
                      SizedBox(width: 10.0,),
                      Text(
                        'xxx'
                      ),
                      SizedBox(width: 6.0,),
                      Text(
                        '做了啥事',
                        style: TextStyle(
                          color: Colors.blue
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 6.0,),
                  Padding(
                    padding: EdgeInsets.only(left: 50.0),
                    child: Text(
                      '2019-05-11',
                      style: TextStyle(
                        fontSize: 12.0,
                        color: Colors.grey
                      ),
                    ),
                  )
                ],
              ),
            ),
            Divider(height: 0,),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      SizedBox(
                        width: 40.0,
                        height: 40.0,
                        child: CircleAvatar(
                          backgroundImage: NetworkImage('https://wx.qlogo.cn/mmopen/vi_32/C1ZwROol5U2XQCEgpN4dnVXOO74Qwnic4uKq8XTl5tMUTGia6O6f6zlr9stR2M9SXRbmtZyRjPWCibRydicico9biaPg/132'),
                        ),
                      ),
                      SizedBox(width: 10.0,),
                      Text(
                        'xxx'
                      ),
                      SizedBox(width: 6.0,),
                      Text(
                        '做了啥事',
                        style: TextStyle(
                          color: Colors.blue
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 6.0,),
                  Padding(
                    padding: EdgeInsets.only(left: 50.0),
                    child: Text(
                      '2019-05-11',
                      style: TextStyle(
                        fontSize: 12.0,
                        color: Colors.grey
                      ),
                    ),
                  )
                ],
              ),
            ),
            Divider(height: 0,)
          ],
        ),
      );
    }
}