import 'package:get/get.dart';

class SimpleController extends GetxController {
  var count = 0;

  void increment() {
    count++;
    update();
  }

  void remove() {
    if (count > 0) {
      count--;
      update();
    }
  }

  void reset() {
    count = 0;
    update();
  }
}
