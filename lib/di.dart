// ignore_for_file: avoid_classes_with_only_static_members

import 'package:get/get.dart';

import 'shared/services/services.dart';

class DenpendencyInjection {
  static Future<void> init() async {
    await Get.putAsync(() => LocalStorage().init());
  }
}
