import 'package:flutter/material.dart';
import 'package:flutter_base/routes.dart';
import 'package:flutter_base/utils/theme/text_style.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Get.offNamed(RouteName.dashboard);
          },
          child: Text('Login', style: AppTheme.text14Regular()),
        ),
      ),
    );
  }
}
