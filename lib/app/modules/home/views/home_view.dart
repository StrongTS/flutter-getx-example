import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx/app/controllers/app_controller.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeListView'),
        centerTitle: true,
      ),
      body: Obx(
        () {
          return ListView.builder(
              itemCount: controller.products.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: Container(
                      height: 300,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(
                              2.0,
                              2.0,
                            ),
                            blurRadius: 2.0,
                            spreadRadius: 1.0,
                          ), //BoxShadow
                          //BoxShadow
                        ],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.network(
                          controller.products[index].thumbnail ?? 'no img',
                          fit: BoxFit.cover,
                          // scale: 3.0,
                        ),
                      ),
                    ),
                    title: Text(controller.products[index].title ?? 'no title'),
                    trailing: Text(
                        'price: ${controller.products[index].price}' ??
                            'no title'),
                  ),
                );
              });
        },
      ),
    );
  }
}
