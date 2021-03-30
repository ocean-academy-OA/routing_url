import 'package:flutter/material.dart';
import 'package:routing_url/route/routerNames.dart';
import 'package:routing_url/screens/about.dart';
import 'package:routing_url/screens/contact.dart';
import 'package:routing_url/screens/home.dart';
import 'package:routing_url/screens/service.dart';

Route<dynamic> generateRoute(
  RouteSettings settings,
) {
  switch (settings.name) {
    case HomeRoute:
      return _getPageRoute(
        Home(),
        settings,
      );
    case AboutRoute:
      return _getPageRoute(About(), settings);
    case ServiceRoute:
      return _getPageRoute(Service(), settings);
    case ContactRoute:
      return _getPageRoute(Contact(), settings);
    default:
      return _getPageRoute(Home(), settings);
  }
}

PageRoute _getPageRoute(Widget child, RouteSettings settings) {
  return _FadeRoute(child: child, routeName: settings.name);
}

class _FadeRoute extends PageRouteBuilder {
  final Widget child;
  final String routeName;
  _FadeRoute({this.child, this.routeName})
      : super(
          settings: RouteSettings(name: routeName),
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              child,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              FadeTransition(
            opacity: animation,
            child: child,
          ),
        );
}
