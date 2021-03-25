import 'package:flutter/material.dart';
import 'package:flutter_base/app/app_controller.dart';
import 'package:flutter_base/data/providers/shared_preferences/data_provider.dart';
import 'package:flutter_base/utils/utils.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            // Get.offNamed(RouteName.dashboard);
            await DataProvider().saveToken('token_abcdef');
            print(DataProvider().token);
            await DataProvider().deleteToken();
            print(DataProvider().token);
          },
          child: Text('Login', style: AppTheme.text14Regular()),
        ),
      ),
    );
  }
}
