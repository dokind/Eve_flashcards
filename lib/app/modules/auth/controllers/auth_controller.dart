import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../shared/shared.dart';
import '../../../providers/providers.dart';
import '../../splash/controllers/splash_controller.dart';

class AuthController extends GetxController {
  final ApiRepository apiRepository;
  AuthController({required this.apiRepository});

  final GlobalKey<FormState> registerFormKey = GlobalKey<FormState>();
  final registerEmailController = TextEditingController();
  final registerPasswordController = TextEditingController();
  final registerConfirmPasswordController = TextEditingController();
  bool registerTermsChecked = false;

  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
  final loginEmailController = TextEditingController();
  final loginPasswordController = TextEditingController();

  login(BuildContext context) async {
    AppFocus.unfocus(context);
    if (loginFormKey.currentState!.validate()) {
      final res = await apiRepository.login(
        loginEmailController.text,
        loginPasswordController.text,
      );
      final prefs = Get.find<SharedPreferences>();
      if (res.isNotEmpty) {
        prefs.setString(StorageKeys.token.name, res);

        /// Navigate to home page
        Get.find<SplashController>().token.value = res;
      } else {
        loginPasswordController.clear();
      }
    }
  }

  logout() async {
    final prefs = Get.find<SharedPreferences>();
    await prefs.remove(StorageKeys.token.name);
    Get.find<SplashController>().token.value = null;
  }

  @override
  void dispose() {
    registerEmailController.dispose();
    registerPasswordController.dispose();
    registerConfirmPasswordController.dispose();
    loginEmailController.dispose();
    loginPasswordController.dispose();
    super.dispose();
  }
}
