import 'package:get/get.dart';

import '../../modules.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(HomeController.new);
    Get.lazyPut<FeedController>(FeedController.new);
    Get.lazyPut<FlashcardsController>(FlashcardsController.new);
    Get.lazyPut<ActivityController>(ActivityController.new);
    Get.lazyPut<ProfileController>(ProfileController.new);
  }
}
