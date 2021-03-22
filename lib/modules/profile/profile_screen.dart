import 'package:flutter/material.dart';
import 'package:flutter_base/utils/utils.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile', style: AppTheme.text16Regular()),
      ),
    );
  }
}
