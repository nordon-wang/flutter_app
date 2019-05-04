import 'package:flutter/material.dart';

class TabBarBtn extends StatelessWidget{
  final List channels;

  TabBarBtn(this.channels);

   @override
      Widget build(BuildContext context) {
        return Container(
          color: Colors.white,
          child:  TabBar(
            labelColor: Colors.black,
            unselectedLabelColor: Colors.black45, // 未选中的颜色
            indicatorColor: Colors.blueAccent,// 选中的颜色
            labelStyle: TextStyle(
              fontSize: 14.0
            ),
            indicatorWeight: 2.0,
            indicatorSize: TabBarIndicatorSize.label,
            isScrollable: true, // 是否可以滚动
            labelPadding: EdgeInsets.symmetric(horizontal: 20.0),
            tabs: channels.map((value){
              return Tab(text: value['name']);
            }).toList(),
          ),
        );
      }
}