import 'package:flutter/material.dart';
import 'package:routing_url/locator.dart';
import 'package:routing_url/navigation_service.dart';
import 'package:routing_url/route/dynamicRouting.dart';
import 'package:routing_url/route/routerNames.dart';

class Menu extends StatefulWidget {
  final Widget child;

  Menu({this.child});
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Navbar(
                  navigationPath: HomeRoute,
                  title: "HOME",
                ),
                Navbar(
                  navigationPath: AboutRoute,
                  title: "ABOUT",
                ),
                Navbar(
                  navigationPath: ServiceRoute,
                  title: "SERVICE",
                ),
                Navbar(
                  navigationPath: ContactRoute,
                  title: "CONTACT",
                ),
              ],
            ),
            Expanded(child: widget.child)
          ],
        ),
      ),
    );
  }
}

class Navbar extends StatelessWidget {
  Navbar({this.navigationPath, this.title});

  final String navigationPath;
  final String title;

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
        child: Text(title),
        onPressed: () {
          locator<NavigationService>().navigateTo(navigationPath,);
        });
  }
}
