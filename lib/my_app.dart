import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app/routes/app_pages.dart';
import 'app_binding.dart';
import 'generated/locales.g.dart';
import 'themes/themes.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Eve flash cards',
      debugShowCheckedModeBanner: false,
      initialBinding: AppBinding(),
      defaultTransition: Transition.fade,
      getPages: AppPages.routes,
      initialRoute: AppPages.INITIAL,
      themeMode: ThemeMode.light,
      theme: MyTheme.light,
      darkTheme: MyTheme.dark,
      translationsKeys: AppTranslation.translations,
      locale: const Locale('en', 'US'),
      fallbackLocale: const Locale('en', 'US'),
    );
  }
}
