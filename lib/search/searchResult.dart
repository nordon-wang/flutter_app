import 'package:flutter/material.dart';

// 搜索结果页面
class SearchResult extends StatefulWidget{
  @override
    _SearchResult createState() => _SearchResult();
}

class _SearchResult extends State<SearchResult>{
   @override
      Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            title: Text('搜索结果页面'),
          ),
          body: Text('搜索结果页面'),
        );
      }
}