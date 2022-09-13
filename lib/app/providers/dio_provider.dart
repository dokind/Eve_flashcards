import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../shared/shared.dart';

class DioProvider extends GetxService {
  final isProduction = const bool.fromEnvironment('dart.vm.product');
  var dio = Dio();
  @override
  void onInit() {
    dio.options.baseUrl =
        isProduction ? 'https://www.google.com/api/' : 'http://127.0.0.1:3000/';
    dio.interceptors.addAll(
      [
        InterceptorsWrapper(
          onRequest: (options, handler) async {
            // get token from storage
            final token =
                Get.find<SharedPreferences>().getString(StorageKeys.token.name);
            if (token != null) {
              options.headers['Authorization'] = 'Bearer $token';
            }
            return handler.next(options);
          },
        ),
        LogInterceptor(responseBody: true),
      ],
    );
    super.onInit();
  }

  Future<dynamic> get(String path,
      {Map<String, dynamic>? queryParameters}) async {
    try {
      final response = await dio.get(path, queryParameters: queryParameters);
      return response.data;
    } on Exception {
      rethrow;
    }
  }

  Future<dynamic> post(String path, {Map<String, dynamic>? data}) async {
    try {
      final response = await dio.post(path, data: data);
      return response.data;
    } on Exception {
      rethrow;
    }
  }

  Future<dynamic> put(String path, {Map<String, dynamic>? data}) async {
    try {
      final response = await dio.put(path, data: data);
      return response.data;
    } on Exception {
      rethrow;
    }
  }

  Future<dynamic> delete(String path, {Map<String, dynamic>? data}) async {
    try {
      final response = await dio.delete(path, data: data);
      return response.data;
    } on Exception {
      rethrow;
    }
  }
}
