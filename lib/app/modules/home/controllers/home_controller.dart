// ignore_for_file: unnecessary_overrides

import 'package:get/get.dart';
import 'package:getx/app/data/models/api_model.dart';
import 'package:getx/app/data/providers/api_provider.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  final products = <Product>[].obs;
  @override
  void onInit() {
    super.onInit();
    getProduct();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void getProduct() async {
    var r = await Get.find<ApiProvider>().getApi();
    var p = r?.products ?? [];
    products.clear();
    products.addAll(p);
  }
}
