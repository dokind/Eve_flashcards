import 'package:get/get.dart';

import 'package:eve_flashcards/app/modules/home/controllers/snake_controller.dart';

import '../controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SnakeController>(
      () => SnakeController(),
    );
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
  }
}
