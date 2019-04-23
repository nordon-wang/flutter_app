import 'package:flutter/material.dart';
import 'package:flutter_app/login/login.dart';

void main() => runApp(App());


class App extends StatelessWidget{
  @override
    Widget build(BuildContext context) {
      return MaterialApp(
        title: 'pms-头条',
        home: LoginPage(),
        debugShowCheckedModeBanner: false,
      );
    }
}

