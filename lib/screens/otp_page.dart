import 'package:elssa/elements/custom_slider_navigation.dart';
import 'package:elssa/screens/add_address.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pin_put/pin_put.dart';
import 'package:pinput/pin_put/pin_put_state.dart';

class OTPPage extends StatefulWidget {
  @override
  _OTPPageState createState() => _OTPPageState();
}

class _OTPPageState extends State<OTPPage> {
  final TextEditingController _pinPutController = TextEditingController();
  final FocusNode _pinPutFocusNode = FocusNode();

  BoxDecoration get _pinPutDecoration {
    return BoxDecoration(
      color: Colors.white,
      border: Border.all(
        color: Colors.black,
        width: 1,
      ),
      borderRadius: BorderRadius.circular(10.0),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Builder(
        builder: (context) {
          return SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: [
                Image(
                  image: AssetImage(
                    'assets/otp_image.png',
                  ),
                  width: 50.0,
                  height: 200.0,
                ),
                SizedBox(
                  height: 55,
                ),
                Text(
                  'OTP Verification',
                  style: TextStyle(
                    fontFamily: 'Inter',
                    color: Colors.black,
                    fontSize: 30.0,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 25),
                Center(
                  child: RichText(
                    text: TextSpan(children: [
                      TextSpan(
                          text: 'Enter the OTP sent to   ',
                          style: TextStyle(color: Colors.black, fontSize: 16)),
                      TextSpan(
                        text: '+1 9879878975',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      )
                    ]),
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  color: Colors.white,
                  margin: const EdgeInsets.all(40.0),
                  child: PinPut(
                    fieldsCount: 4,
                    onSubmit: (String pin) => {},
                    focusNode: _pinPutFocusNode,
                    controller: _pinPutController,
                    eachFieldHeight: 60,
                    eachFieldWidth: 60,
                    submittedFieldDecoration: _pinPutDecoration.copyWith(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    textStyle: TextStyle(fontSize: 22),
                    selectedFieldDecoration: _pinPutDecoration,
                    followingFieldDecoration: _pinPutDecoration.copyWith(
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(
                        color: Colors.grey,
                        width: 1,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 0),
                Center(
                  child: RichText(
                    text: TextSpan(children: [
                      TextSpan(
                          text: 'OTP not recived?  ',
                          style: TextStyle(color: Colors.grey, fontSize: 16)),
                      WidgetSpan(
                          child: GestureDetector(
                        child: Text(
                          'RESEND OTP',
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.deepPurpleAccent,
                              fontWeight: FontWeight.bold),
                        ),
                        onTap: () {},
                      ))
                    ]),
                  ),
                ),
                SizedBox(height: 30),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: Material(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(30),
                      child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              CustomSliderNavigation(page: AddAddress()),
                            );
                          },
                          child: Container(
                            height: 55,
                            width: 500,
                            alignment: Alignment.center,
                            child: Text(
                              'VERIFY & PROCEED',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                          ))),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
