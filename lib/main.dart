// ignore_for_file: use_key_in_widget_constructors
// @dart=2.9
import 'package:elssa/screens/home_screen.dart';
import 'package:elssa/screens/login_screen.dart';
import 'package:elssa/screens/signup_screen.dart';
import 'package:elssa/screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Elssa',
      home: Scaffold(
        body: SplashScreen(),
      ),
    );
  }
}
