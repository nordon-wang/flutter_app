import 'package:flutter/material.dart';
import 'package:flutter_app/start/start.dart';

class Questions extends StatelessWidget{
   @override
      Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            title: Text('问题'),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: (){
              print('object');
              // Navigator.push(context, MaterialPageRoute(
              //   builder: (context) => Home()
              // ));
              // Navigator.pushNamed(context, '/')
              Navigator.push(context, MaterialPageRoute(
                builder: (context) => Start('token')
              ));
            },
            child: Text('启动'),
          ),
        );
      }
}