import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/controllers.dart';

class FlashCardForm extends StatelessWidget {
  FlashCardForm({Key? key}) : super(key: key);
  final controller = Get.find<HomeController>();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
      height: Get.height * 0.7,
      color: Theme.of(context).colorScheme.background,
      child: Form(
        key: controller.formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
                child: Text('Add Flash Card',
                    style: Theme.of(context).textTheme.headline6)),
            const SizedBox(height: 16.0),
            Text('Name', style: Theme.of(context).textTheme.subtitle1),
            TextFormField(
              controller: controller.nameController,
              decoration: const InputDecoration(
                hintText: 'Enter name',
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
            ),
            const SizedBox(height: 16.0),
            Text('Description', style: Theme.of(context).textTheme.subtitle1),
            TextFormField(
              controller: controller.descriptionController,
              decoration: const InputDecoration(
                hintText: 'Enter description',
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
            ),
            ElevatedButton(
              onPressed: _checkForm,
              child: const Text('Add'),
            )
          ],
        ),
      ),
    );
  }

  _checkForm() {
    if (controller.formKey.currentState!.validate()) {
      controller.addFlashCard();
      Get.back();
    } else {
      Get.snackbar(
        'Input required',
        'Please fill all fields',
        backgroundColor: Colors.blue,
        colorText: Colors.white,
        duration: const Duration(seconds: 2, milliseconds: 300),
      );
    }
  }
}
