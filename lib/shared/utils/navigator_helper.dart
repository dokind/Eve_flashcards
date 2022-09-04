// ignore_for_file: avoid_classes_with_only_static_members

import 'package:get/get.dart';

class NavigatorHelper {
  static void popLastScreens({
    required int popCount,
  }) {
    int count = 0;
    while (count < popCount) {
      Get.back();
      count++;
    }
  }
}
