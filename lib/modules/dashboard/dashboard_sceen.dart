import 'package:flutter/material.dart';
import 'package:flutter_base/modules/home/home_screen.dart';
import 'package:flutter_base/modules/notification/notification_screen.dart';
import 'package:flutter_base/modules/profile/profile_screen.dart';

enum DashboardTab { home, notification, profile }

extension DashboardTabX on DashboardTab {
  BottomNavigationBarItem get item {
    switch (this) {
      case DashboardTab.home:
        return BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        );
      case DashboardTab.notification:
        return BottomNavigationBarItem(
          icon: Icon(Icons.notifications),
          label: 'Noti',
        );
      case DashboardTab.profile:
        return BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
        );
    }
  }

  Widget get screen {
    switch (this) {
      case DashboardTab.home:
        return HomeScreen();
      case DashboardTab.notification:
        return NotificationScreen();
      case DashboardTab.profile:
        return ProfileScreen();
    }
  }
}

class DashboardScreen extends StatefulWidget {
  final listTab = DashboardTab.values;

  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  DashboardTab _currentTab = DashboardTab.home;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: widget.listTab.map<BottomNavigationBarItem>((tab) {
          return tab.item;
        }).toList(),
        currentIndex: _currentTab.index,
        onTap: (index) {
          _currentTab = widget.listTab[index];
          setState(() {});
        },
      ),
      body: _currentTab.screen,
    );
  }
}
