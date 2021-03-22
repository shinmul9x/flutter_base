import 'package:flutter/material.dart';
import 'package:flutter_base/routes.dart';
import 'package:get/get.dart';

void main() {
  runApp(HogosApp());
}

class HogosApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: RouteName.intitial,
      onGenerateRoute: generateRoute,
    );
  }
}
