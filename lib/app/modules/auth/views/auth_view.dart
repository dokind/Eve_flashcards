import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../generated/locales.g.dart';
import '../../../../shared/shared.dart';
import '../controllers/auth_controller.dart';

class AuthView extends GetView<AuthController> {
  const AuthView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.2,
            ),

            /// rotate like page
            TweenAnimationBuilder<double>(
              tween: Tween<double>(begin: -0.6, end: 0.5),
              duration: const Duration(seconds: 2),
              curve: Curves.easeInBack,
              builder: (context, tween, child) {
                return Transform.rotate(
                  angle: 0.5,
                  child: Transform(
                    transform: Matrix4.identity()
                      ..setEntry(2, 2, 0.001)
                      ..rotateX(0.5)
                      ..rotateZ(tween),
                    child: child,
                  ),
                );
              },
              child: const AppLogo(height: 120.0),
            ),
            const Spacer(),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      Get.toNamed('/auth/login', arguments: controller);
                    },
                    child: Text(LocaleKeys.screens_login.tr),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: primary,
                    ),
                    onPressed: () {
                      Get.toNamed('/auth/register', arguments: controller);
                    },
                    child: const Text('Register'),
                  ),
                ),
              ],
            ),
            const Spacer()
          ],
        ),
      ),
    );
  }
}
