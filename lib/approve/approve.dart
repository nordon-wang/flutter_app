import 'package:flutter/material.dart';
import 'package:flutter_app/approve/Privilege.dart';
import 'package:flutter_app/approve/approveContent.dart';

class Approve extends StatefulWidget{
  @override
    _Approve createState() => _Approve();
}

class _Approve extends State<Approve>{

  Widget tabButton(context){
    return Container(
      margin: EdgeInsets.only(top:24.0, left: 10.0, right: 10.0),
      decoration: BoxDecoration(
        color: Colors.blue,
         borderRadius: BorderRadius.circular(8.0)
      ),
      child: FlatButton(
        onPressed: (){
          Navigator.pushNamed(context, '/imgUpload');
        },
        child: Text(
          '申请身份认证',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16.0,
            fontWeight: FontWeight.normal
          ),
        ),
      ),
    );
  }

 @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text(
            '实名认证'
          ),
        ),
        body: Container(
          color: Colors.grey[200],
          child: ListView(
            children: <Widget>[
              ApproveContent(),
              Privilege(),
              tabButton(context)
            ],
          ),
        ),
      );
    }
}