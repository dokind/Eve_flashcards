import 'package:eve_flashcards/app/data/providers/dio_client.dart';
import 'package:get/get.dart';

class AppBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<DioClient>(DioClient());
  }
}
