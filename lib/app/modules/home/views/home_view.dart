import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../generated/locales.g.dart';
import '../controllers/home_controller.dart';
import '../widgets/widgets.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(LocaleKeys.screens_home.tr),
        centerTitle: true,
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
      bottomNavigationBar: NavigationBar(selectedIndex: 0, destinations: [
        NavigationDestination(
          icon: const Icon(Icons.home),
          label: LocaleKeys.screens_home.tr,
        ),
        NavigationDestination(
          icon: const Icon(Icons.search),
          label: LocaleKeys.screens_settings.tr,
        ),
        NavigationDestination(
          icon: const Icon(Icons.person),
          label: LocaleKeys.screens_profile.tr,
        ),
      ]),
    );
  }

  _addFlashCard() {
    Get.bottomSheet(
      FlashCardForm(),
      isScrollControlled: true,
    );
  }
}
