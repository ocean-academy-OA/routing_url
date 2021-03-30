import 'package:flutter/material.dart';

class About extends StatefulWidget {
  String text;
  String name;
  About({this.text, this.name});
  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 500,
            width: 500,
            color: Colors.yellowAccent,
          ),
        ],
      ),
    );
  }
}
