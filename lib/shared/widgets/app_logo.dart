import 'package:flutter/material.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({
    super.key,
    required this.height,
    required this.path,
  });
  final String path;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: path,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.asset(
          'assets/images/eve.png',
          height: height,
          width: height,
        ),
      ),
    );
  }
}
