import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../data/data.dart';

class HomeController extends GetxController {
  // some dummy data
  final flashCards = <FlashCard>[].obs;
  final name = ''.obs;
  final formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final descriptionController = TextEditingController();
// ...
  void addFlashCard() {
    final newCard = FlashCard(
      name: nameController.text,
      description: descriptionController.text,
    );
    flashCards.add(newCard);
    resetForm();
  }

  void resetForm() {
    nameController.clear();
    descriptionController.clear();
  }

// that's it
// for today ;)
  @override
  void onClose() {
    nameController.dispose();
    descriptionController.dispose();
    super.onClose();
  }
}
