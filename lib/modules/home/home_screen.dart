import 'package:flutter/material.dart';
import 'package:flutter_base/modules/home/home_controller.dart';
import 'package:flutter_base/utils/utils.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  final controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home', style: AppTheme.text16Regular()),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              'Home',
              style: AppTheme.text24Regular(),
            ),
            ElevatedButton(
              onPressed: () => controller?.callDio(),
              child: Text(
                'hitmi',
                style: AppTheme.text24Regular(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
