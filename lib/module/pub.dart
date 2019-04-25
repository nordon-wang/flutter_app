import 'package:dio/dio.dart';
import 'package:flutter_app/module/config.dart';

Dio dio = new Dio();

class PubModule {
  // 请求方法
  static httpRequest(methed, url, [data]) async{
    // 请求头增加 token
    dio.options.headers['toen'] = 'token';

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
      print(err);
    }
  }

  // 校验 token 是否存在
  static checkToken() async{
    return 'token' ?? '';
  }
}