import 'package:flutter/cupertino.dart';

import '../domain/nav_params.dart';

abstract class AppNavigator {
  late List<String> stack;
  /// To perform navigation functions like push,replace and pushAndRemoveUntil
  /// Input : [NavParams] which includes route, args and [NavAction]
  Future<dynamic>? push(NavParams params);

  /// To perform navigation functions pop
  Future<dynamic>? pop({dynamic? value});

  /// Key applied to my [MaterialApp], is used to extract [BuildContext] from anywhere in app.
  GlobalKey<NavigatorState> getKey();
}
