import 'package:get/get.dart';
import 'package:getx/app/data/models/user_model.dart';

class LoginController extends GetxController {
  //TODO: Implement LoginController

  final user = User().obs;
  @override
  void onInit() {
    super.onInit();
    // user.update((val) {
    //   val?.username = 'abc';
    //   val?.email = 'abc@gmail.com';
    // });
  }

  void updateUsername(String newUsername) {
    user.update((u) {
      u?.username = newUsername;
    });
  }

  void resetUsername() {
    user.update((u) {
      u?.username = 'ไม่พบ User';
    });
  }
}
