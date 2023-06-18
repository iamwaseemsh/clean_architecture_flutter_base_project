import 'package:flutter/material.dart';

import '../domain/nav_actions.dart';
import '../domain/nav_params.dart';
import 'app_navigator.dart';

class AppNavigatorImp implements AppNavigator {
  GlobalKey<NavigatorState> navKey = GlobalKey<NavigatorState>();
  AppNavigatorImp();
  @override
  List<String> stack = [];

  @override
  Future<dynamic>? push(NavParams params) async {
    switch (params.navAction) {
      case NavAction.push:
        return Navigator.of(navKey.currentContext!)
            .pushNamed(params.route, arguments: params.arguments);
      case NavAction.replace:
        return Navigator.of(navKey.currentContext!)
            .pushReplacementNamed(params.route, arguments: params.arguments);
      case NavAction.replaceAll:
        return Navigator.pushNamedAndRemoveUntil(
            navKey.currentContext!, params.route, (route) => false,
            arguments: params.arguments);
      default:
        return Navigator.of(navKey.currentContext!)
            .pushNamed(params.route, arguments: params.arguments);
    }
  }

  @override
  Future<dynamic>? pop({dynamic? value}) {
    Navigator.of(navKey.currentContext!).pop(value);
    return null;
  }

  @override
  GlobalKey<NavigatorState> getKey() {
    return navKey;
  }

  _addPageToStack(String path) {
    stack.add(path);
  }

  _removeLastPageFromStack(String path) {
    if (stack.isNotEmpty) {
      stack.removeLast();
    }
  }
}
