import 'package:flutter/material.dart';
import 'package:flutter_app/persional/dataContent.dart';
import 'package:flutter_app/persional/noticeContent.dart';
import 'package:flutter_app/persional/workContent.dart';

class Work extends StatefulWidget{
  final String name;
  Work(this.name);

  @override
    _Work createState() => _Work();
}

class _Work extends State<Work>{

  final List<Tab> myTabs = <Tab>[
    Tab(
      text: '作品',
    ),
    Tab(
      text: '公告',
    ),
    Tab(
      text: '数据',
    )
  ];

 @override
    Widget build(BuildContext context) {
      return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              '作品'
            ),
            elevation: 0,
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(50.0),
              child: Container(
                color: Colors.white,
                child: TabBar(
                  labelStyle: TextStyle(
                    fontSize: 16.0
                  ),
                  labelColor: Colors.blue,
                  unselectedLabelColor: Colors.black,
                  indicatorColor: Colors.blueAccent,
                  indicatorSize: TabBarIndicatorSize.label,
                  indicatorWeight: 2.0,
                  tabs: myTabs,
                ),
              ),
            ),
          ),
          body: TabBarView(
            // children: myTabs.map((value){
            //   return workContent(value.text);
            // }).toList(),
            children: <Widget>[
              workContent('作品'),
              NoticeContent(),
              DataContent()
            ],
          ),
        ),
      );
    }
}