import 'package:flutter/material.dart';
import 'package:flutter_app/redux/init.dart';
import 'package:flutter_app/use/BtnList.dart';
import 'package:flutter_app/use/UserBtn.dart';
import 'package:flutter_app/use/userInfo.dart';
import 'package:flutter_redux/flutter_redux.dart';

class User extends StatelessWidget{
   @override
      Widget build(BuildContext context) {
        return StoreBuilder<AppState>(
          builder: (context, store){
            return Scaffold(
              // 修改主题颜色
              floatingActionButton: FloatingActionButton(
                onPressed: (){
                  ThemeData themeData = ThemeData(
                    primaryColor: Colors.yellow
                  );

                  store.dispatch(ThemeAction(themeData));
                },
                child: Text('颜色'),
              ),
              body: Column(
                children: <Widget>[
                  UserInfo(),
                  UserBtn(),
                  BtnList()
                ],
              ),
            );
          },
        );
      }
}
