import 'package:flutter/material.dart';
import 'package:routing_url/landing.dart';
import 'package:routing_url/locator.dart';
import 'package:routing_url/navigation_service.dart';
import 'package:routing_url/route/dynamicRouting.dart';
import 'package:routing_url/route/routerNames.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, child) => Menu(
        child: child,
      ),
      navigatorKey: locator<NavigationService>().navigatorKey,
      onGenerateRoute: generateRoute,
      initialRoute: HomeRoute,
    );
  }
}
