import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/feed_controller.dart';

class FeedView extends GetView<FeedController> {
  const FeedView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FeedView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          controller.count.toString(),
          style: const TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
