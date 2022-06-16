import 'package:dio/dio.dart';

class DioHelper {
  static Dio? dio;
  static const String baseUrl = 'https://api.themoviedb.org/3/';
  static init() {
    dio = Dio(
      BaseOptions(
        baseUrl: baseUrl,
        // receiveDataWhenStatusError: true,
        // followRedirects: false,
        // validateStatus: (status) {
        //   return status! < 500;
        // },
      ),
    );
  }

  //===============================================================
  static Future<Response> getData({
    required String url,
    Map<String, dynamic>? query,
  }) async {
    //TODO: add your headers here
    dio!.options.headers = {};
    return await dio!.get(
      url,
      queryParameters: query,
    );
  }

//===============================================================
  static Future<Response> postData({
    required String url,
    required Map<String, dynamic> data,
    Map<String, dynamic>? query,
  }) async {
    //TODO: add your headers here
    dio!.options.headers = {};
    return dio!.post(
      url,
      queryParameters: query,
      data: data,
    );
  } //===============================================================

  static Future<Response> putData({
    required String url,
    required Map<String, dynamic> data,
    Map<String, dynamic>? query,
  }) async {
    //TODO: add your headers here
    dio!.options.headers = {};
    return dio!.put(
      url,
      queryParameters: query,
      data: data,
    );
  }
}
