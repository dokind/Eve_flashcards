import 'package:get/get.dart';

import 'controllers.dart';

class ActivityController extends GetxController
    with GetSingleTickerProviderStateMixin {
  final menuController = Get.put(MenuController());

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;

  void toggleMenu() {
    if (menuController.panelDegree.value == 90.0) {
      menuController.panelDegree.value = 0.0;
    } else {
      menuController.panelDegree.value = 90.0;
    }
  }
}
