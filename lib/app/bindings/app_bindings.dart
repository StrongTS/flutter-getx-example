import 'package:get/get.dart';
import 'package:getx/app/data/providers/api_provider.dart';
import 'package:getx/app/services/auth_service.dart';
import '../controllers/app_controller.dart';

class AppBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<AppController>(AppController());
    Get.put<ApiProvider>(ApiProvider());

    Get.put<AuthService>(AuthService());
  }
}
