import 'package:get/get.dart';

class AuthService extends GetxService {
  final _authed = false.obs;
  bool get authed => _authed.value;

  void login() {
    _authed.value = true;
    Get.log('authed : ${_authed.value}');
  }

  void logout() {
    _authed.value = false;
    Get.log('authed : ${_authed.value}');
  }
}
