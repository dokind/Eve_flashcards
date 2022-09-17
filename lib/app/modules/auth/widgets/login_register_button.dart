import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../shared/shared.dart';
import '../../../routes/app_pages.dart';
import '../../modules.dart';

class LoginRegisterButton extends StatelessWidget {
  LoginRegisterButton({super.key});
  final AuthController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return DelayedAnimation(
      delay: 250,
      child: Row(
        children: [
          _horizontalSpacer(),
          Expanded(
            /// Login Button
            child: ElevatedButton(
              onPressed: () async {
                // delete pref keys
                var pref = Get.find<SharedPreferences>();
                pref.remove('isOnboardingDone');
                Get.toNamed(Routes.LOGIN, arguments: controller);
              },
              child: const Text(
                'Login',
              ),
            ),
          ),
          _horizontalSpacer(),
          Expanded(
            /// Register Button
            child: ElevatedButton(
              onPressed: () {
                Get.toNamed(Routes.REGISTER, arguments: controller);
              },
              child: const Text('Register'),
            ),
          ),
          _horizontalSpacer(),
        ],
      ),
    );
  }

  _horizontalSpacer() => const SizedBox(width: 20);
}
