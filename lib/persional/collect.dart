import 'package:flutter/material.dart';
import 'package:flutter_app/persional/collectContent.dart';

class Collect extends StatefulWidget{
final String name;
Collect(this.name);

  @override
    _Collect createState() => _Collect();
}

class _Collect extends State<Collect>{

final List<Tab> myTabs = <Tab>[
  Tab(
    text:'我的收藏'
  ),
  Tab(
    text:'我的历史'
  )
];



 @override
    Widget build(BuildContext context) {
      return DefaultTabController(
        initialIndex: widget.name == '收藏' ? 0 : 1,
        length: myTabs.length,
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              '收藏和历史'
            ),
            elevation: 0.0,
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
                  // indicatorColor: Colors.blue, 没有效果
                  indicatorColor: Colors.blueAccent,
                  indicatorSize: TabBarIndicatorSize.label,
                  indicatorWeight: 2.0,
                  tabs: myTabs,
                ),
              ),
            ),
          ),
          body: TabBarView(
            children:myTabs.map((value){
              return CollectContent(value.text);
            }).toList(),
          ),
        ),
      );
    }
}