import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../auth.dart';
import 'widgets.dart';

class OnBoardWidget extends StatelessWidget {
  OnBoardWidget({
    Key? key,
  }) : super(key: key);
  final AuthController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: RadialGradient(
          radius: 1.25,
          colors: [
            Color(0xFF6EFFFF),
            Color(0xFF57E7F9),
            Color(0xFF1CA8EA),
            Color(0xFF008BE3),
          ],
        ),
      ),
      child: Obx(
        () => controller.isOnBaordedDone.value
            ? const LoginBackground(
                withText: true,
              )
            : Center(
                child: AnimatedTextKit(
                  onFinished: () {
                    controller.isOnBaordedDone.value = true;
                  },
                  isRepeatingAnimation: false,
                  animatedTexts: [
                    FadeAnimatedText(
                      'Improve your vocabulary',
                      textStyle: const TextStyle(
                          fontSize: 32.0, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    FadeAnimatedText(
                      'with Eve FlashCards',
                      textStyle: const TextStyle(
                        fontSize: 32.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    WavyAnimatedText(
                      'Then',
                      textStyle: const TextStyle(
                        fontSize: 32.0,
                      ),
                    ),
                    FlickerAnimatedText(
                      'Test Yourself',
                      textStyle: const TextStyle(
                          fontSize: 32.0, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    // 5900
                  ],
                ),
              ),
      ),
    );
  }

  get spacer => const Spacer();
}
