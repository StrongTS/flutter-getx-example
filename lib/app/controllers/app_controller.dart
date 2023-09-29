import 'package:get/get.dart';

class AppController extends GetxController {
  //TODO: Implement AppController

  final count = 0.obs;
  @override
  void onInit() {
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

  void increment() => count.value++;
  void remove() => count.value > 0 ? count.value-- : null;
  void reset() => count.value = 0;
}
