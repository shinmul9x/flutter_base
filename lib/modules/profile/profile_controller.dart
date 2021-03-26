import 'package:flutter_base/app/app_controller.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController {
  @override
  void onReady() {
    super.onReady();
    Get.find<AppController>().handleException(Exception());
  }
}
