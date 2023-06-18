import 'nav_actions.dart';

class NavParams {
  final String route;
  final Object? arguments;
  NavAction navAction;
  NavParams(
      {required this.route, this.arguments, this.navAction = NavAction.push});
}
