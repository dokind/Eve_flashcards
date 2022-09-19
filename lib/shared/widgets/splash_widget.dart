import 'package:flutter/material.dart';

import '../shared.dart';

class SplashWidget extends StatelessWidget {
  const SplashWidget({super.key});

  @override
  Widget build(BuildContext context) {
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
