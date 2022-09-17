import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../shared/shared.dart';
import '../auth.dart';

class ContinueButton extends StatelessWidget {
  ContinueButton({super.key});
  final AuthController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return DelayedAnimation(
      child: ElevatedButton(
        onPressed: controller.navigateToOnboard,
        child: FractionallySizedBox(
          widthFactor: 0.82,
          child: Text(
            'Continue',
            // theme on button
            style: Theme.of(context).textTheme.button!.copyWith(
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1.5,
                ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
