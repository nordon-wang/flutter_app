import 'package:flutter/material.dart';
import 'package:flutter_app/chat/chat.dart';
import 'package:flutter_app/home/home.dart';
import 'package:flutter_app/login/login.dart';
import 'package:flutter_app/servers/pub.dart';
import 'package:flutter_app/search/search.dart';
import 'package:redux/redux.dart';
import 'package:flutter_app/redux/init.dart';
import 'package:flutter_redux/flutter_redux.dart';

void main() => {
  PubModule.checkToken().then((token){
    runApp(App(token));
  })
};


class App extends StatelessWidget{
  final String token;

  App(this.token);
  // 初始化 redux
  final store = new Store<AppState>(
    appReducer,
    initialState: AppState(
      themeData: ThemeData(
        primaryColor: Colors.blue
      )
    )
  );

  @override
    Widget build(BuildContext context) {
      return StoreProvider(
        store: store,
        child: StoreBuilder<AppState>(
          builder: (context, sotre){
            return MaterialApp(
              title: 'pms-头条',
              // home: token != '' ? Home() :LoginPage(),
              // home: LoginPage(),
              home: Home(),
              debugShowCheckedModeBanner: false,
              // theme: ThemeData(
              //   primaryColor: Colors.red
              // ),
              theme: store.state.themeData,
              routes: {
                '/home': (context) => Home(),
                '/login': (context) => LoginPage(),
                '/search': (context) => SearchPage(),
                '/chat': (context) => Chat(),
              },
            );
          },
        )
      );
    }
}

