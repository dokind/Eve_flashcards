import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import '../../../../shared/shared.dart';

class LoginBackground extends StatelessWidget {
  const LoginBackground({
    super.key,
    this.child,
    this.withText = false,
  });
  final Widget? child;
  final bool withText;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(
        vertical: MediaQuery.of(context).padding.top,
      ),
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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          DelayedAnimation(
            child: AppLogo(
              height: MediaQuery.of(context).size.height * 0.2,
              path: logo,
            ),
          ),
          const SizedBox(height: 8),
          if (withText)
            DelayedAnimation(
              child: AnimatedTextKit(
                animatedTexts: [
                  ColorizeAnimatedText(
                    'Eve FlashCards',
                    textStyle: Theme.of(context).textTheme.headline6!.copyWith(
                          fontFamily: 'LuckiestGuy',
                          color: Colors.white,
                          fontSize: 32,
                        ),
                    colors: [primary, secondary],
                    speed: const Duration(milliseconds: 250),
                  ),
                ],
                isRepeatingAnimation: false,
              ),
            ),
          if (child != null) Expanded(child: child!),
        ],
      ),
    );
  }
}
