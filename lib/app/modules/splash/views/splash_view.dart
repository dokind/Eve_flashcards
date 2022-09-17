import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../shared/shared.dart';
import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // SizeConfig().init(context);
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            primary,
            primary,
            primary,
            primary,
            primary.withOpacity(0.5),
          ],
        ),
      ),
      child: Center(
        child: AppLogo(
          height: MediaQuery.of(context).size.height * 0.2,
          path: 'assets/images/eve.png',
        ),
      ),
    );
  }
}
