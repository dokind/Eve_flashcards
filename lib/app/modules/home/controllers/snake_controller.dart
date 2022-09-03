import 'package:get/get.dart';

class SnakeController extends GetxController {
  final _score = 0.obs;
  get score => _score.value;
  set score(value) => _score.value = value;
}
