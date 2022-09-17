import 'dart:ui';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../shared/shared.dart';
import '../controllers/auth_controller.dart';
import '../widgets/widgets.dart';

class AuthView extends GetView<AuthController> {
  const AuthView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        body: Stack(
          children: [
            const LoginBackground(),
            Positioned.fill(
              child: DelayedAnimation(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.0),
                    ),
                  ),
                ),
              ),
            ),
            Positioned.fill(
              child: Align(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(height: 8),
                    DelayedAnimation(
                      delay: 400,
                      child: AnimatedTextKit(
                        animatedTexts: [
                          ColorizeAnimatedText(
                            'Eve FlashCards',
                            textStyle:
                                Theme.of(context).textTheme.headline6!.copyWith(
                              fontFamily: 'LuckiestGuy',
                              color: Colors.white,
                              fontSize: 40,
                              shadows: [
                                const Shadow(
                                  blurRadius: 10.0,
                                  offset: Offset(5.0, 5.0),
                                ),
                              ],
                            ),
                            colors: [primary, secondary],
                            speed: const Duration(milliseconds: 250),
                          ),
                        ],
                        isRepeatingAnimation: false,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Learn and rise with EVE',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        shadows: [
                          Shadow(
                            blurRadius: 10.0,
                            offset: Offset(5.0, 5.0),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned.fill(
              bottom: MediaQuery.of(context).padding.bottom,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Obx(
                  () => controller.isOnBaorded.value == true
                      ? LoginRegisterButton()

                      /// NAVIGATE TO ONBOARDING SCREEN
                      : ContinueButton(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
