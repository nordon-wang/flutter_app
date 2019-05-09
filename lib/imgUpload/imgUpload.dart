import 'package:flutter/material.dart';
import 'package:flutter_app/imgUpload/imgLoad.dart';
import 'package:flutter_app/imgUpload/inputBox.dart';

class ImgUpload extends StatefulWidget{
  @override
    _ImgUpload createState() => _ImgUpload();
}

class _ImgUpload extends State<ImgUpload>{

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
          '下一步',
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
          title: Text('身份证上传'),
          elevation: 0.0,
        ),
        body: Container(
          color: Colors.grey[200],
          child: ListView(
            children: <Widget>[
              InputBox(),
              ImgLoad(),
              tabButton(context)
            ],
          ),
        ),
      );
    }
}