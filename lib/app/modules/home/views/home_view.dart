import 'package:eve_flashcards/app/modules/home/views/snake_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';
import '../widgets/widgets.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flash Cards'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Get.to(
                const SnakeView(),
              );
            },
            icon: const Icon(
              Icons.gamepad,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addFlashCard,
        child: const Icon(Icons.add),
      ),
      body: Obx(
        () => ListView.builder(
          itemCount: controller.flashCards.length,
          itemBuilder: (context, index) => FlashCardCard(
            flashCard: controller.flashCards[index],
            index: index,
          ),
        ),
      ),
    );
  }

  _addFlashCard() {
    Get.bottomSheet(
      FlashCardForm(),
      isScrollControlled: true,
    );
  }
}
