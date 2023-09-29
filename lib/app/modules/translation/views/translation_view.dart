import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/translation_controller.dart';

class TranslationView extends GetView<TranslationController> {
  const TranslationView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TranslationView'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'greeting'.tr,
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Get.updateLocale(Locale('th', 'TH'));
              },
              child: Text('ไทย'),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Get.updateLocale(Locale('en', 'US'));
              },
              child: Text('English US'),
            ),
          ],
        ),
      ),
    );
  }
}
