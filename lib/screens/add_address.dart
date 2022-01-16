// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:elssa/elements/custom_slider_navigation.dart';
import 'package:elssa/screens/home_screen.dart';
import 'package:elssa/screens/login_screen.dart';
import 'package:elssa/screens/otp_page.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class AddAddress extends StatefulWidget {
  const AddAddress({Key? key}) : super(key: key);

  @override
  State<AddAddress> createState() => _AddAddressState();
}

class _AddAddressState extends State<AddAddress> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 90),
                Image(
                  image: AssetImage(
                    'assets/address.png',
                  ),
                  width: 200.0,
                  height: 280.0,
                ),
                SizedBox(height: 70),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 25),
                      child: Material(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(30),
                          child: InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  CustomSliderNavigation(page: HomeScreen()),
                                );
                              },
                              child: Container(
                                  height: 55,
                                  width: 500,
                                  alignment: Alignment.center,
                                  child: RichText(
                                    text: TextSpan(
                                      children: [
                                        WidgetSpan(
                                          child: Icon(
                                            Icons.my_location_outlined,
                                            color: Colors.white,
                                            size: 18,
                                          ),
                                        ),
                                        TextSpan(
                                            text: "  Your current location",
                                            style: TextStyle(
                                              fontSize: 17,
                                            )),
                                      ],
                                    ),
                                  )))),
                    ),
                    SizedBox(height: 20),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 25),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(
                                width: 1,
                                color: Color(0xffA1A4B2),
                                style: BorderStyle.solid)),
                        child: TextField(
                          decoration: InputDecoration(
                              icon: Padding(
                                  padding: EdgeInsets.only(left: 50),
                                  child: Icon(Icons.search)),
                              hintText: 'Some other location',
                              contentPadding:
                                  EdgeInsets.symmetric(horizontal: 0),
                              border: InputBorder.none),
                          onChanged: (value) {},
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
