import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx/app/routes/app_pages.dart';

import '../controllers/clock_controller.dart';

class ClockView extends GetView<ClockController> {
  const ClockView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ClockView'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Obx(() => Text(
                  controller.currentTime.value.toString(),
                  style: TextStyle(fontSize: 20),
                )),
            ElevatedButton(
              onPressed: () => Get.offNamed(Routes.MAIN_MENU),
              child: Text(
                'Main',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
