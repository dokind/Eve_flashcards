import 'package:get/get.dart';

import 'app/providers/providers.dart';

class AppBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<DioProvider>(DioProvider());
    Get.put<ApiRepository>(ApiRepository(apiProvider: Get.find()),
        permanent: true);
  }
}
