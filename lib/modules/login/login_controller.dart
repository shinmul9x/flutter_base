import 'package:flutter_base/utils/extension/calling_api_extension.dart';
import 'package:flutter_base/utils/helper/dialog_helper.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  var status = CallingApiStatus.none.obs;

  @override
  void onInit() {
    super.onInit();
    ever<CallingApiStatus?>(status, (status) {
      if (status?.isInProgress ?? false) {
        DialogHelper.showLoading();
      } else {
        DialogHelper.dissmisLoading();
      }
    });
  }

  void change({
    CallingApiStatus? status,
  }) {
    this.status.value = status ?? this.status.value;
  }

  Future login() async {
    change(status: CallingApiStatus.inProgress);
    await Future.delayed(Duration(seconds: 2));
    change(status: CallingApiStatus.successLoading);
  }
}
