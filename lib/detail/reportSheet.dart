import 'package:flutter/material.dart';

class ReportSheet extends StatelessWidget{
   @override
      Widget build(BuildContext context) {
        return Container(
          child: Column(
            children: <Widget>[
              GestureDetector(
                onTap: (){
                },
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text('举报内容'),
                ),
              ),
              Divider(),
              GestureDetector(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text('取消'),
                ),
              )
            ],
          ),
        );
      }
}