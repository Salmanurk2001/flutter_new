import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

class DioService {
  Future<dynamic>getData(String url) async{
    Dio dio = Dio();
    return await dio.get(url,options: Options(responseType: ResponseType.json,
    method: 'GET')).then((response){
      return response;
    });
  }
}