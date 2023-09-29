import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/app/routes/app_pages.dart';
import 'package:getx/app/services/auth_service.dart';

class AuthMiddleware extends GetMiddleware {
  @override
  RouteSettings? redirect(String? route) {
    // TODO: implement redirect
    final authService = Get.find<AuthService>();
    return authService.authed ? null : RouteSettings(name: Routes.AUTH_ERROR);
  }
}
