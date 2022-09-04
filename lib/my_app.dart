import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app/routes/app_pages.dart';
import 'app_binding.dart';
import 'themes/themes.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Application',
      initialRoute: AppPages.INITIAL,
      initialBinding: AppBinding(),
      getPages: AppPages.routes,
      themeMode: ThemeMode.dark,
      theme: MyTheme.light,
      defaultTransition: Transition.fade,
      darkTheme: MyTheme.dark,
    );
  }
}
