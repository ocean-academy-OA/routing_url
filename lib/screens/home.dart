import 'package:flutter/material.dart';
import 'package:routing_url/locator.dart';
import 'package:routing_url/navigation_service.dart';
import 'package:routing_url/route/routerNames.dart';
import 'package:routing_url/screens/about.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String text = "jaya";
  String name = "priya";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 500,
            width: 500,
            color: Colors.pinkAccent,
          ),
          RaisedButton(onPressed: () {
            locator<NavigationService>().navigateTo(
              AboutRoute,
            );
          })
        ],
      ),
    );
  }
}
