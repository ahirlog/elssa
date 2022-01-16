// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors
// @dart=2.9

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:carousel_pro/carousel_pro.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            actions: [
              Padding(
                padding: EdgeInsets.only(right: 20),
                child: Icon(
                  Icons.search,
                  color: Colors.black,
                  size: 28,
                ),
              ),
            ],
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      WidgetSpan(
                        child: Icon(Icons.location_on_outlined,
                            color: Colors.black, size: 25),
                      ),
                      TextSpan(
                          text: "Home ",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 22,
                              fontWeight: FontWeight.w500)),
                      WidgetSpan(
                        child: Icon(Icons.expand_more,
                            color: Colors.black, size: 18),
                      ),
                    ],
                  ),
                ),
                Text('Inner Circle, Connaught Place, New Delhi, Del...',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w400)),
              ],
            ),
          ),
          body: ListView(
            children: [
              Container(
                child: SizedBox(
                  height: 200.0,
                  child: Carousel(
                    images: [
                      AssetImage('assets/slider.png'),
                      AssetImage('assets/slider.png'),
                      AssetImage('assets/slider.png'),
                      AssetImage('assets/slider.png'),
                      AssetImage('assets/slider.png'),
                    ],
                    dotSize: 4.0,
                    dotSpacing: 15.0,
                    dotColor: Colors.lightGreenAccent,
                    indicatorBgPadding: 5.0,
                    dotBgColor: Colors.purple.withOpacity(0.0),
                    boxFit: BoxFit.fill,
                    animationCurve: Curves.fastOutSlowIn,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
