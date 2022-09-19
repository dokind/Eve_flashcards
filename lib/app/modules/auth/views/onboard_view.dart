import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../shared/shared.dart';
import '../../modules.dart';
import '../widgets/widgets.dart';

class OnboardView extends GetView<AuthController> {
  const OnboardView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          OnBoardWidget(),
          Obx(
            () => controller.isOnBaordedDone.value
                ? Positioned.fill(
                    child: DelayedAnimation(
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: EdgeInsets.only(
                              bottom: MediaQuery.of(context).padding.bottom),
                          child: FilledButton(
                            onPressed: () async {
                              await controller.onBoardingDone();
                            },
                            child: const FractionallySizedBox(
                              widthFactor: 0.8,
                              child: Text(
                                'Let\'s start',
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                : const SizedBox(),
          ),
        ],
      ),
    );
  }

  showButton() {}
}
