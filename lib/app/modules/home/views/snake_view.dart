import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/snake_controller.dart';

class SnakeView extends GetView<SnakeController> {
  const SnakeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SnakeView'),
        centerTitle: true,
      ),
      body: CustomPaint(
        foregroundPainter: BackgroundPainter(),
        child: Container(),
        // painter: SnakePainter(),
      ),
    );
  }
}

class BackgroundPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();

    /// green
    paint.color = const Color.fromRGBO(160, 200, 50, 1);
    canvas.drawRect(
      Rect.fromLTWH(0, 0, size.width, size.height),
      paint,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
