import 'package:flutter/material.dart';
import 'package:flutter_base/utils/utils.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home', style: AppTheme.text16Regular()),
      ),
      body: Center(
        child: Text(
          'Home',
          style: AppTheme.text24Regular(),
        ),
      ),
    );
  }
}
