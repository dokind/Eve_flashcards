import 'package:eve_flashcards/app/providers/providers.dart';
import 'package:get/get.dart';

import '../controllers/auth_controller.dart';

class AuthBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AuthController>(
      () => AuthController(apiRepository: Get.find()),
    );
  }
}
