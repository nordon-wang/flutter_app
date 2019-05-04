import 'package:flutter/material.dart';
import 'package:flutter_app/module/pub.dart';
import 'package:flutter_app/news/SearchBox.dart';
import 'package:flutter_app/news/drawList.dart';
import 'package:flutter_app/news/tabBarBtn.dart';
import 'package:flutter_app/news/tabBarContent.dart';

class News extends StatefulWidget{
  @override
    _NewsState createState() => _NewsState();
}


class _NewsState extends State<News>{
  List channels = [];

  _getChannels (){
    print('drawList关闭, _getChannels 被调用了');
    PubModule.httpRequest('get', 'channels').then( (res) {
      // print(res.data.code);  报错
      var data =res.data['data'];

      setState(() {
        channels = data;
      });
    });
  }

  @override
    void initState() {
      super.initState();
      _getChannels();
    }

   @override
      Widget build(BuildContext context) {
        return channels.length == 0 ? SizedBox() : DefaultTabController(
          length: channels.length,
          child: Scaffold(
            appBar: AppBar(
              title: SearchBox(),
              elevation: 0.0,
              bottom:PreferredSize(
                preferredSize: Size.fromHeight(50.0), //  距离顶部的距离
                child: TabBarBtn(channels),
              ),
            ),
            body: TabBarView(
              children: channels.map((value){
                return TabBarContent(value['id']);
              }).toList()
              // <Widget>[
              //   TabBarContent()
              // ],
            ),
            drawer: DrawList(_getChannels),
          ),
        );
      }
}