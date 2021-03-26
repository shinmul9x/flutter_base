import 'package:flutter/material.dart';
import 'package:flutter_base/modules/home/home_screen.dart';
import 'package:flutter_base/modules/notification/notification_screen.dart';
import 'package:flutter_base/modules/profile/profile_screen.dart';
import 'package:flutter_base/utils/theme/theme.dart';

enum RootTab {
  home,
  notification,
  profile,
}

class RootScreen extends StatefulWidget {
  const RootScreen({Key? key, this.initTab = RootTab.home}) : super(key: key);

  final listTab = RootTab.values;
  final RootTab initTab;

  @override
  _RootScreenState createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  late RootTab _current;
  late bool _hasUnreadNotification;

  @override
  void initState() {
    super.initState();
    _current = widget.initTab;
    _hasUnreadNotification = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: widget.listTab.map<BottomNavigationBarItem>((tab) {
          return _tabItem(tab);
        }).toList(),
        currentIndex: _current.index,
        onTap: (index) => setState(
          () => _current = widget.listTab[index],
        ),
      ),
      body: _screen(_current),
    );
  }

  BottomNavigationBarItem _tabItem(RootTab tab) {
    switch (tab) {
      case RootTab.home:
        return BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        );
      case RootTab.notification:
        return BottomNavigationBarItem(
          icon: _hasUnreadNotification
              ? Icon(Icons.notifications_active)
              : Icon(Icons.notifications),
          label: 'Noti',
        );
      case RootTab.profile:
        return BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
        );
      default:
        return BottomNavigationBarItem(
          icon: Icon(Icons.circle),
          label: 'Undefined',
        );
    }
  }

  Widget _screen(RootTab tab) {
    switch (tab) {
      case RootTab.home:
        return HomeScreen();
      case RootTab.notification:
        return NotificationScreen();
      case RootTab.profile:
        return ProfileScreen();
      default:
        return Scaffold(
          body: Center(
            child: Text(
              'Undefined Tab',
              style: AppTheme.text24Regular(),
            ),
          ),
        );
    }
  }
}
