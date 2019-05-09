import 'package:flutter/material.dart';

class Collect extends StatefulWidget{
  @override
    _Collect createState() => _Collect();
}

class _Collect extends State<Collect>{
 @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text(
            '收藏'
          ),
        ),
      );
    }
}