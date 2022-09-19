import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/flashdetail_controller.dart';

class FlashdetailView extends GetView<FlashdetailController> {
  const FlashdetailView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FlashdetailView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'FlashdetailView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
