import 'package:flutter/material.dart';
import 'package:flutter_base/modules/profile/profile_controller.dart';
import 'package:flutter_base/utils/utils.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatelessWidget {
  final controller = Get.put(ProfileController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile', style: AppTheme.text16Regular()),
      ),
    );
  }
}
