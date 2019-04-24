import 'package:dio/dio.dart';
import 'package:flutter_app/module/config.dart';

Dio dio = new Dio();

class PubModule {
  static httpRequest(methed, url, [data]) async{
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
}