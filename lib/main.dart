import 'package:ff/login.dart';
import 'package:flutter/material.dart';
import 'dart:async';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
            () => Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (BuildContext context) => login())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          color: Colors.black,
          child: Center(
            child: FlutterLogo(
              colors: Colors.yellow,
              size: 150.0,
            ),
          ),
        ));
  }
}