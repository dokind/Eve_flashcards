import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../data/data.dart';
import '../../../providers/api_repository.dart';
import '../../../routes/app_pages.dart';
import '../../modules.dart';
import '../home.dart';

class HomeController extends GetxController with StateMixin<User> {
  final ApiRepository _apiRepository = Get.find();
  int currentIndex = 0;
  Widget? currentPage;

  @override
  void onInit() async {
    try {
      // final res = await _apiRepository.getUser();
      final res = User(
          userName: 'dokind',
          email: 'namsrai@Gmail.com',
          phoneNumber: '88580971');
      await Future.delayed(const Duration(seconds: 2));

      change(res, status: RxStatus.success());
    } on Exception catch (e) {
      change(null, status: RxStatus.error(e.toString()));
    }
    super.onInit();
  }

  changeIndex(int index) {
    currentIndex = index;
    update();
  }

  StatelessWidget getSelectedPage(int index) {
    switch (index) {
      case 0:
        return const FeedView();
      case 1:
        return const FlashcardsView();
      case 2:
        return const ActivityView();
      case 3:
        return const ProfileView();
      default:
        return const FeedView();
    }
  }
}
