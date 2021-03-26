import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_base/modules/dashboard/root_sceen.dart';
import 'package:flutter_base/modules/initial/initial_screen.dart';
import 'package:flutter_base/modules/login/login_screen.dart';
import 'package:get/route_manager.dart';

class RouteName {
  static const intitial = '/';
  static const login = '/login';
  static const dashboard = '/dashboard';
}

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case RouteName.intitial:
      return GetPageRoute(
        page: () => InitialScreen(),
      );
    case RouteName.login:
      return GetPageRoute(
        page: () => LoginScreen(),
      );
    case RouteName.dashboard:
      return GetPageRoute(
        page: () => RootScreen(),
      );
    default:
      return GetPageRoute(
        page: () => Scaffold(
          body: Center(
            child: Text('undefined'),
          ),
        ),
      );
  }
}
