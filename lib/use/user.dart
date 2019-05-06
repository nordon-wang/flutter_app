import 'package:flutter/material.dart';
import 'package:flutter_app/use/BtnList.dart';
import 'package:flutter_app/use/UserBtn.dart';
import 'package:flutter_app/use/userInfo.dart';

class User extends StatelessWidget{
   @override
      Widget build(BuildContext context) {
        return Scaffold(
          body: Column(
            children: <Widget>[
              UserInfo(),
              UserBtn(),
              BtnList()
            ],
          ),
        );
      }
}
