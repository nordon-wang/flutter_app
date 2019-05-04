import 'package:flutter/material.dart';
import 'package:flutter_app/news/news.dart';
import 'package:flutter_app/question/question.dart';
import 'package:flutter_app/use/user.dart';
import 'package:flutter_app/viedo/video.dart';

class Home extends StatefulWidget{
  @override
  _Home createState() => _Home();

}

class _Home extends State<Home>{
  
  List _bodys = [
    News(),
    Questions(),
    Video(),
    User()
  ];
  int _index = 0;

  @override
    Widget build(BuildContext context) {
      return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('新闻')
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.question_answer),
              title: Text('问题')
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.video_call),
              title: Text('视频')
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.attach_money),
              title: Text('用户')
            )
          ],
          type: BottomNavigationBarType.fixed,
          currentIndex: _index,
          onTap: (index){
            setState(() {
              _index = index;
            });
          },
        ),
        body: _bodys[_index],
      );
    }
}

// class Home extends StatelessWidget{

// }