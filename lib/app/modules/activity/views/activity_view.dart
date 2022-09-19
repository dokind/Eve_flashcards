import 'dart:math';

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../shared/constants/colors.dart';
import '../../../routes/app_pages.dart';
import '../controllers/activity_controller.dart';
import '../widgets/select_flashcard_menu.dart';
import 'spacegame_view.dart';

class ActivityView extends GetView<ActivityController> {
  const ActivityView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary,
      body: SafeArea(
        child: Stack(
          children: [
            GridView.builder(
              itemCount: 30,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, mainAxisSpacing: 2, crossAxisSpacing: 2),
              itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  controller.toggleMenu();
                },
                // onTap: () => Get.toNamed(Routes.ACTIVITY + SpaceGame.route),
                child: AspectRatio(
                  aspectRatio: 2 / 3,
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    color: secondary,
                    child: Center(
                      child: Text(
                        index.toString(),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned.fill(
              child: Obx(() => TweenAnimationBuilder(
                  tween: Tween<double>(
                    begin: controller.menuController.panelDegree.value,
                    end: controller.menuController.panelDegree.value,
                  ),
                  duration: const Duration(milliseconds: 300),
                  builder: (context, double value, child) {
                    return Transform.scale(
                      scale: value / 90 + 1,
                      child: Transform(
                          transform: Matrix4.identity()
                            ..setEntry(3, 2, 0.001)
                            ..rotateX(value / 180 * pi),
                          alignment: Alignment.center,
                          child: child),
                    );
                  },
                  child: const SelectFlashcardMenu())),
            ),

            // SelectFlashcardMenu(),
          ],
        ),
      ),
    );
  }
}
