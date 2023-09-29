import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx/app/routes/app_pages.dart';

import '../controllers/auth_error_controller.dart';

class AuthErrorView extends GetView<AuthErrorController> {
  const AuthErrorView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('AuthErrorView'),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
            onPressed: () => Get.offAllNamed(Routes.LOGIN),
            child: Text('Auth error click to login'),
          ),
        ),
      ),
    );
  }
}
