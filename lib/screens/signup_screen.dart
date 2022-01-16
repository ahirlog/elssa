// ignore_for_file: prefer_const_constructors

import 'package:elssa/elements/custom_slider_navigation.dart';
import 'package:elssa/screens/login_screen.dart';
import 'package:elssa/screens/otp_page.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
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
                Image(
                  image: AssetImage(
                    'assets/signup.png',
                  ),
                  width: 170.0,
                  height: 350.0,
                  fit: BoxFit.fill,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Your Home services Expert',
                      style: TextStyle(
                        fontFamily: 'Raleway',
                        color: Colors.black,
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Continue with Phone Number',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        color: Color(0xff9C9C9C),
                        fontSize: 15.0,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 30,
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
                    SizedBox(height: 25),
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
                                  'SIGN UP',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                  ),
                                ),
                              ))),
                    ),
                    SizedBox(height: 15),
                    Text(
                      'VIEW OTHER OPTION',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        color: Color(0xff5A77FF),
                        fontSize: 13.0,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 30),
                    RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: 'ALREADY HAVE AN ACCOUNT? ',
                            style: TextStyle(color: Colors.grey)),
                        WidgetSpan(
                            child: GestureDetector(
                          child: Text(
                            'LOG IN',
                            style: TextStyle(
                                color: Colors.deepPurpleAccent,
                                fontWeight: FontWeight.bold),
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              CustomSliderNavigation(page: LoginScreen()),
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
