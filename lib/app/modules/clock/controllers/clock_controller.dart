import 'dart:async';

import 'package:get/get.dart';
import 'package:getx/app/routes/app_pages.dart';
import 'package:intl/intl.dart';

class ClockController extends GetxController {
  //TODO: Implement ClockController

  final currentTime = "".obs;
  late Timer timer;

  @override
  void onInit() {
    super.onInit();
    print('start timer');
    timer = Timer.periodic(Duration(seconds: 1), (timer) {
      updateCurrentTime();
    });
  }

  @override
  void onReady() {
    super.onReady();
    print('onReady timer');
    // Get.showSnackbar(GetSnackBar(
    //   title: 'title',
    //   message: 'message',
    // ));
  }

  @override
  void onClose() {
    super.onClose();
    print('cancel timer');
    timer.cancel();
  }

  void updateCurrentTime() {
    DateTime now = DateTime.now();
    var formattedDate = DateFormat('dd/MM/yyyy HH:mm:ss').format(now);
    // print(formattedDate);
    currentTime.value = formattedDate;
  }
}
