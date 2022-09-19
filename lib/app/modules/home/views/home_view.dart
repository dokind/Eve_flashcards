import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../shared/shared.dart';
import '../home.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (controller) => controller.obx(
        onLoading: const SplashWidget(),
        onError: (error) => Center(
          child: Text(
            error.toString(),
          ),
        ),
        (user) => Scaffold(
          body: controller.getSelectedPage(controller.currentIndex),
          bottomNavigationBar: NavigationBar(
              height: 60.0,
              animationDuration: const Duration(),
              selectedIndex: controller.currentIndex,
              onDestinationSelected: (value) => controller.changeIndex(value),
              destinations: const [
                NavigationDestination(
                  icon: Icon(Icons.home_rounded),
                  selectedIcon: Icon(Icons.home_rounded, color: primary),
                  label: 'Feed',
                ),
                NavigationDestination(
                  icon: Icon(Icons.book_outlined),
                  selectedIcon: Icon(Icons.book_outlined, color: primary),
                  label: 'Feed',
                ),
                NavigationDestination(
                  icon: Icon(Icons.local_activity_rounded),
                  selectedIcon:
                      Icon(Icons.local_activity_rounded, color: primary),
                  label: 'Activity',
                ),
                NavigationDestination(
                  icon: Icon(Icons.person_rounded),
                  selectedIcon: Icon(Icons.person_rounded, color: primary),
                  label: 'Profile',
                ),
              ]),
        ),
      ),
    );
  }
}
