import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../home.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (controller) => controller.obx(
        onLoading: Container(
          color: Colors.white,
          child: const Center(
            child: CircularProgressIndicator(),
          ),
        ),
        onError: (error) => Center(
          child: Center(
            child: Text(
              error.toString(),
            ),
          ),
        ),
        (user) => Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'Welcome ',
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
          bottomNavigationBar: NavigationBar(
              selectedIndex: controller.currentIndex,
              onDestinationSelected: (value) => controller.changeIndex(value),
              destinations: const [
                NavigationDestination(
                  icon: Icon(Icons.home),
                  label: 'Home',
                ),
                NavigationDestination(
                  icon: Icon(Icons.favorite),
                  label: 'Favorite',
                ),
                NavigationDestination(
                  icon: Icon(Icons.search),
                  label: 'Search',
                ),
                NavigationDestination(
                  icon: Icon(Icons.person),
                  label: 'Profile',
                ),
              ]),
        ),
      ),
    );
  }
}
