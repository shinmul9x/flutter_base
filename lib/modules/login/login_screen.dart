import 'package:flutter/material.dart';
import 'package:flutter_base/modules/login/login_controller.dart';
import 'package:flutter_base/utils/extension/calling_api_extension.dart';
import 'package:flutter_base/utils/utils.dart';
import 'package:get/get.dart';

import '../../routes.dart';

class LoginScreen extends StatelessWidget {
  final controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () async {
                await controller?.login();
                // Get.offNamed(RouteName.dashboard);
              },
              child: Text('Login', style: AppTheme.text14Regular()),
            ),
            Obx(
              () {
                return controller?.status.value?.isSuccessLoading ?? false
                    ? ElevatedButton(
                        onPressed: () async {
                          Get.offNamed(RouteName.dashboard);
                        },
                        child: Text('Login', style: AppTheme.text14Regular()),
                      )
                    : Container();
              },
            ),
          ],
        ),
      ),
    );
  }
}
