import 'package:get/get.dart';

import '../modules/modules.dart';

// ignore_for_file: constant_identifier_names

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.AUTH,
      page: AuthView.new,
      binding: AuthBinding(),
      children: [
        GetPage(name: _Paths.LOGIN, page: LoginView.new),
        GetPage(name: _Paths.REGISTER, page: RegisterView.new),
        GetPage(name: _Paths.ONBOARD, page: OnboardView.new),
      ],
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: SplashView.new,
      binding: SplashBinding(),
    ),
  ];
}
