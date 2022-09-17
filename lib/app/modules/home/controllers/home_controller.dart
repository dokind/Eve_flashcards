import 'package:get/get.dart';

import '../../../data/data.dart';
import '../../../providers/api_repository.dart';

class HomeController extends GetxController with StateMixin<User>, ScrollMixin {
  final ApiRepository _apiRepository = Get.find();
  int currentIndex = 0;

  @override
  void onInit() async {
    try {
      final res = await _apiRepository.getUser();
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

  @override
  Future<void> onEndScroll() {
    // TODO: implement onEndScroll
    throw UnimplementedError();
  }

  @override
  Future<void> onTopScroll() {
    // TODO: implement onTopScroll
    throw UnimplementedError();
  }
}
