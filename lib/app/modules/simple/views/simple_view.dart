import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx/app/routes/app_pages.dart';

import '../controllers/simple_controller.dart';

class SimpleView extends StatelessWidget {
  const SimpleView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => SimpleController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('Simple Getx'),
        centerTitle: true,
      ),
      body: GetBuilder<SimpleController>(builder: (ctr) {
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '${ctr.count}',
                style: TextStyle(fontSize: 20),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () => ctr.increment(),
                  child: Text('increment +1'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () => ctr.remove(),
                  child: Text('remove -1'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () => ctr.reset(),
                  child: Text('reset'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.red),
                  ),
                  onPressed: () => Get.offNamed(Routes.MAIN_MENU),
                  child: Text(
                    'Close',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              )
            ],
          ),
        );
      }),
    );
  }
}
