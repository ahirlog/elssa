// ignore_for_file: use_key_in_widget_constructors

import 'dart:async';
import 'package:elssa/elements/custom_slider_navigation.dart';
import 'package:elssa/screens/signup_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5), () {
      Navigator.push(
        context,
        CustomSliderNavigation(page: const SignupScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  flex: 4,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const <Widget>[
                      Image(
                        image: AssetImage(
                          'assets/elssa_logo.png',
                        ),
                        width: 170.0,
                        height: 198.0,
                        fit: BoxFit.fill,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const SizedBox(height: 20.0),
                      const Text(
                        'Powered by Oyelabs',
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontStyle: FontStyle.italic,
                          color: Color(0xff7E8389),
                          fontSize: 14.0,
                          fontWeight: FontWeight.w500,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      RichText(
                        text: const TextSpan(
                          children: [
                            TextSpan(
                                text: "With Love ",
                                style: TextStyle(
                                  fontSize: 13.0,
                                  fontFamily: 'Inter',
                                  color: Color(0xff7583CA),
                                )),
                            WidgetSpan(
                              child: Icon(
                                Icons.favorite,
                                color: Color(0xff7583CA),
                                size: 13,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
