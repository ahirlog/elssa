// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:elssa/elements/custom_slider_navigation.dart';
import 'package:elssa/screens/login_screen.dart';
import 'package:elssa/screens/otp_page.dart';
import 'package:elssa/screens/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            iconTheme: IconThemeData(color: Colors.black),
          ),
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(height: 50),
                    Text(
                      'Welcome Back!',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        color: Colors.black,
                        fontSize: 28.0,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 65),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 25),
                      child: Material(
                          color: Color(0xff7583CA),
                          borderRadius: BorderRadius.circular(30),
                          child: InkWell(
                              onTap: () {},
                              child: AnimatedContainer(
                                duration: Duration(seconds: 1),
                                height: 55,
                                width: 500,
                                alignment: Alignment.center,
                                child: RichText(
                                  text: TextSpan(
                                    children: [
                                      WidgetSpan(
                                        child: Icon(
                                          FontAwesomeIcons.facebookF,
                                          size: 22,
                                          color: Colors.white,
                                        ),
                                      ),
                                      TextSpan(
                                        text: "       CONTINUE WITH FACEBOOK",
                                      ),
                                    ],
                                  ),
                                ),
                              ))),
                    ),
                    SizedBox(height: 20),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 25),
                      child: Material(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                          child: InkWell(
                              onTap: () {},
                              child: Container(
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Color(0xffEBEAEC),
                                      width: 1,
                                    ),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20))),
                                height: 55,
                                width: 500,
                                alignment: Alignment.center,
                                child: RichText(
                                  text: TextSpan(
                                    children: [
                                      WidgetSpan(
                                        child: Icon(
                                          FontAwesomeIcons.google,
                                          size: 22,
                                          color: Colors.black,
                                        ),
                                      ),
                                      TextSpan(
                                          text: "       CONTINUE WITH GOOGLE",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16)),
                                    ],
                                  ),
                                ),
                              ))),
                    ),
                    SizedBox(height: 50),
                    Text(
                      'OR CONTINUE WITH PHONE NUMBER',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        color: Color(0xff9C9C9C),
                        fontSize: 15.0,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Color(0xffF2F3F7),
                          border: Border.all(
                            color: Colors.white,
                            width: 0,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      margin: EdgeInsets.symmetric(vertical: 0, horizontal: 25),
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      child: InternationalPhoneNumberInput(
                        onInputChanged: (PhoneNumber number) {
                          print(number.phoneNumber);
                        },
                        onSubmit: () {},
                        onInputValidated: (bool value) {
                          print(value);
                        },
                        validator: (p0) {},
                        spaceBetweenSelectorAndTextField: 0,
                        // textFieldController: TextEditingController,

                        // searchBoxDecoration: InputDecoration,

                        selectorConfig: SelectorConfig(
                          selectorType: PhoneInputSelectorType.DIALOG,
                        ),
                        autoValidateMode: AutovalidateMode.onUserInteraction,
                        selectorTextStyle: TextStyle(color: Colors.black),
                        // initialValue: number,
                        // textFieldController: controller,
                        keyboardType: TextInputType.numberWithOptions(
                            signed: true, decimal: true),

                        onSaved: (PhoneNumber number) {
                          print('On Saved: $number');
                        },
                        inputDecoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Enter Mobile Number',
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 25),
                      child: Material(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(30),
                          child: InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  CustomSliderNavigation(page: OTPPage()),
                                );
                              },
                              child: Container(
                                height: 55,
                                width: 500,
                                alignment: Alignment.center,
                                child: Text(
                                  'LOG IN',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                  ),
                                ),
                              ))),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Forgot Password?',
                        style: TextStyle(
                          fontFamily: 'Inter',
                          color: Colors.black,
                          fontSize: 14.0,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(height: 25),
                    RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: 'DON’T HAVE AN ACCOUNT? ',
                            style: TextStyle(color: Colors.grey)),
                        WidgetSpan(
                            child: GestureDetector(
                          child: Text(
                            'SIGN UP',
                            style: TextStyle(
                                color: Colors.deepPurpleAccent,
                                fontWeight: FontWeight.bold),
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              CustomSliderNavigation(page: SignupScreen()),
                            );
                          },
                        ))
                      ]),
                    )
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
