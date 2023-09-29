import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx/app/controllers/app_controller.dart';

import '../controllers/detail_controller.dart';

class DetailView extends GetView<DetailController> {
  const DetailView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DetailView'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Center(
              child: Obx(() => Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blue),
                    child: Text(
                      '${Get.find<AppController>().count.value}',
                      style: TextStyle(fontSize: 40, color: Colors.white),
                    ),
                  )),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MaterialButton(
                  onPressed: () => Get.find<AppController>().increment(),
                  color: Colors.blue,
                  textColor: Colors.white,
                  child: Icon(
                    Icons.add,
                    size: 40,
                  ),
                  padding: EdgeInsets.all(16),
                  shape: CircleBorder(),
                ),
                MaterialButton(
                  onPressed: () => Get.find<AppController>().remove(),
                  color: Colors.red,
                  textColor: Colors.white,
                  child: Icon(
                    Icons.remove,
                    size: 40,
                  ),
                  padding: EdgeInsets.all(16),
                  shape: CircleBorder(),
                ),
              ],
            ),
            MaterialButton(
              onPressed: () => Get.find<AppController>().reset(),
              color: Colors.green,
              textColor: Colors.white,
              child: Icon(
                Icons.restart_alt,
                size: 40,
              ),
              padding: EdgeInsets.all(16),
              shape: CircleBorder(),
            ),
          ],
        ),
      ),
    );
  }
}
