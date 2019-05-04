import 'package:dio/dio.dart';
import 'package:flutter_app/module/config.dart';

Dio dio = new Dio();

//设置代理

class PubModule {
  // 请求方法
  static httpRequest(methed, url, [data]) async{
    // 请求头增加 token
    dio.options.headers['token'] = 'token';
    dio.options.receiveTimeout = 5000;
    dio.options.headers = {
      "Content-Type": "application/json",
      "Accept": "application/json",
    };

    try {
      Response response;
      switch (methed) {
        case 'get':
          response = await dio.get(Config.baseUrl + url);
          break;
        case 'post':
          response = await dio.post(Config.baseUrl + url, data: data);
          break;
        default:
      }
      return response;
    } catch (err) {
      print('-----err--');
      print(err);
    }
  }

  // 校验 token 是否存在
  static checkToken() async{
    return 'token' ?? '';
  }
}