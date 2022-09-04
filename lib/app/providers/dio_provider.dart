import 'package:dio/dio.dart';
import 'package:get/get.dart';

class DioProvider extends GetxService {
  final isProduction = const bool.fromEnvironment('dart.vm.product');
  var dio = Dio();
  @override
  void onInit() {
    dio.options.baseUrl = isProduction
        ? 'https://www.google.com/api/'
        : 'http://localhost:3000/api/';
    dio.interceptors.addAll([
      InterceptorsWrapper(
        onRequest: (options, handler) async {
          // final token = await Get.find<AuthController>().getToken();
          // if (token != null) {
          //   options.headers['Authorization'] = 'Bearer $token';
          // }
          return handler.next(options);
        },
      ),
      LogInterceptor(responseBody: true)
      // RetryOnConnectionChangeInterceptor(
      //   requestRetrier: DioConnectivityRequestRetrier(
      //     dio: dio,
      //     connectivity: Get.find<Connectivity>(),
      //   ),
      // )
    ]);
    super.onInit();
  }
}
