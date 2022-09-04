import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/auth_controller.dart';

class RegisterView extends StatelessWidget {
  RegisterView({Key? key}) : super(key: key);
  final controller = Get.arguments as AuthController;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RegisterView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'RegisterView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
