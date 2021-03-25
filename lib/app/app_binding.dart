import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'app_controller.dart';

class AppBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(AppController());
    // Get.putAsync(
    //   () async => await SharedPreferences.getInstance(),
    //   tag: 'tagsAreEverywhere',
    //   permanent: true,
    // );
  }
}
