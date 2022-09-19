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
    GetPage(
      name: _Paths.PROFILE,
      page: () => const ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.FEED,
      page: () => const FeedView(),
      binding: FeedBinding(),
    ),
    GetPage(
        name: _Paths.ACTIVITY,
        page: () => const ActivityView(),
        binding: ActivityBinding(),
        children: [
          GetPage(name: SpaceGame.route, page: () => const SpaceGame()),
        ]),
    GetPage(
      name: _Paths.FLASHCARDS,
      page: () => const FlashcardsView(),
      binding: FlashcardsBinding(),
      children: [
        GetPage(
          name: _Paths.FLASHDETAIL,
          page: () => const FlashdetailView(),
          binding: FlashdetailBinding(),
        ),
      ],
    ),
  ];
}
