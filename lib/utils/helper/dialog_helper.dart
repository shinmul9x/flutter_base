import 'package:flutter_base/widgets/dialog.dart';
import 'package:get/get.dart';

class DialogHelper {
  static bool _showingDialog = false;

  static void showLoading() {
    if (!_showingDialog) {
      _showingDialog = true;
      Get.dialog(LoadingDialog(), barrierDismissible: false);
    }
  }

  static void dissmisLoading() {
    if (_showingDialog) {
      Get.back();
      _showingDialog = false;
    }
  }
}
