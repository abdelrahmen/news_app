import 'package:dio/dio.dart';

class DioHelper {
  static Dio? dio;
  static init() {
    dio = Dio(
      BaseOptions(
        baseUrl: 'https://newsapi.org/',
        receiveDataWhenStatusError: true,
      ),
    );
  }

  static Future<Response> getData({
    required url,
    required Map<String, dynamic> query,
  }) async {
    return await dio!.get(url, queryParameters: query);
  }
}
//8b0c8fd9904b48cabc66f935c81d4224