import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_base/routes.dart';
import 'package:get/get.dart';

class InitialScreen extends StatefulWidget {
  @override
  _InitialScreenState createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  late Timer timer;
  int value = 0;

  @override
  void initState() {
    super.initState();
    value = 1;
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (value == 0) {
        timer.cancel();
        Get.offNamed(RouteName.login);
      } else {
        value--;
        setState(() {});
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('$value'),
      ),
    );
  }
}
