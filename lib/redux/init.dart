import 'package:flutter/material.dart';
import 'package:redux/redux.dart';
 
class AppState {
  String token;
  ThemeData themeData;

  AppState({this.token, this.themeData});
}

AppState appReducer(state, action){
  return AppState(
    token: UpdateToken(state.token, action),
    themeData:UpdateThemeData(state.themeData, action)
  );
}

// 修改token
final UpdateToken = combineReducers<String>(
  [
    TypedReducer<String, TokenAction>(_refreshToken),
  ]
);

// 定义action方法
String _refreshToken(String token, action){
  token = action.token;
  return token;
}

// 定义一个action类
class TokenAction{
  final token;

  TokenAction(this.token);
}

// 修改主题
final UpdateThemeData = combineReducers<ThemeData>([
  TypedReducer<ThemeData, ThemeAction>(_refreshTheme)
]);

ThemeData _refreshTheme(ThemeData themeData, action){
  themeData = action.themeData;
  return themeData;
}

class ThemeAction {
  final themeData;
  ThemeAction(this.themeData);
}