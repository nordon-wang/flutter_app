import 'package:flutter/material.dart';
import 'package:flutter_app/home/home.dart';
import 'package:flutter_app/login/login.dart';
import 'package:flutter_app/module/pub.dart';

void main() => {
  PubModule.checkToken().then((token){
    runApp(App(token));
  })
};


class App extends StatelessWidget{
  final String token;

  App(this.token);

  @override
    Widget build(BuildContext context) {
      return MaterialApp(
        title: 'pms-头条',
        // home: token != '' ? Home() :LoginPage(),
        home: LoginPage(),
        debugShowCheckedModeBanner: false,
        routes: {
          '/home': (context) => Home(),
          '/login': (context) => LoginPage()
        },
      );
    }
}

