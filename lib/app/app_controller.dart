import 'package:get/get.dart';

class AppController extends GetxController {
  void handleException(Exception e) {
    Get.defaultDialog();
  }
}
