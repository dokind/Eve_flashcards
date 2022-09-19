import 'package:get/get.dart';

import '../../../data/data.dart';

class FlashcardsController extends GetxController
    with StateMixin<List<FlashCard>>, ScrollMixin {
  @override
  void onInit() async {
    await Future.delayed(const Duration(seconds: 1));
    value = <FlashCard>[
      FlashCard(
          name: 'IELTS 200',
          desc: 'So far so good',
          imgUrl: 'https://i.imgur.com/1Z0Q3Zy.jpg',
          totalWords: 200,
          memorizedWords: 100),
      FlashCard(
          name: 'IELTS 200',
          desc: 'So far so good',
          imgUrl: 'https://i.imgur.com/1Z0Q3Zy.jpg',
          totalWords: 330,
          memorizedWords: 100),
    ];
    change(value, status: RxStatus.success());

    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
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
