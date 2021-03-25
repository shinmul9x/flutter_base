import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../routes.dart';
import 'app_binding.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: RouteName.intitial,
      onGenerateRoute: generateRoute,
      initialBinding: AppBinding(),
    );
  }
}
