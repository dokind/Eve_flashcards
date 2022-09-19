import 'package:get/get.dart';

import '../controllers/flashdetail_controller.dart';

class FlashdetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FlashdetailController>(
      () => FlashdetailController(),
    );
  }
}
