import 'package:eve_flashcards/themes/my_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app/routes/app_pages.dart';
import 'app_binding.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Application',
      enableLog: true,
      initialRoute: AppPages.INITIAL,
      initialBinding: AppBinding(),
      getPages: AppPages.routes,
      themeMode: ThemeMode.dark,
      theme: MyTheme.light,
      defaultTransition: Transition.fade,
      darkTheme: MyTheme.dark,
      // builder: (context, child) {
      //   print('builder some how called ');
      //   print('here is a child');
      //   print(child);
      //   return MediaQuery(
      //     data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
      //     child: child!,
      //   );
      // },
    );
  }
}
