import 'package:eve_flashcards/shared/shared.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../routes/app_pages.dart' show Routes;

class SplashController extends GetxController {
  final token = Rxn<String?>(null);
  late Worker worker;
  @override
  void onReady() async {
    super.onInit();
    await Future.delayed(const Duration(seconds: 2));
    final storage = Get.find<SharedPreferences>();
    worker = ever<String?>(
      token,
      (tkn) {
        if (tkn != null) {
          Get.offNamed(Routes.HOME);
        } else {
          Get.offNamed(Routes.AUTH);
        }
      },
    );
    token.value = storage.getString(StorageKeys.token.name);
  }
}
