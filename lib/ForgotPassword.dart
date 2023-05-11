import 'package:dance_flutter/resetPassword.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'login.dart';
import 'OTP.dart';
import 'resetPassword.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  TextEditingController email1 = TextEditingController();
  bool pressed = false;
  bool g = false;
  bool ck = false;
  String? _otp;
  final TextEditingController _fieldOne = TextEditingController();
  final TextEditingController _fieldTwo = TextEditingController();
  final TextEditingController _fieldThree = TextEditingController();
  final TextEditingController _fieldFour = TextEditingController();
  GlobalKey<FormState> form1 = GlobalKey<FormState>();

  // void valid() {
  //   if (form1.currentState!.validate()) {
  //     // Navigator.push(
  //     //   context,
  //     //   MaterialPageRoute(
  //     //     builder: (context) => const ResetPassword(),
  //     //   ),
  //     // );
  //   }
  // }

  void checkpress() {
    //MouseCursor.basic;
  }

  Widget build(BuildContext context) => Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/step.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.center,
              end: Alignment.bottomCenter,
              colors: [
                Colors.black45,
                Colors.black38,
              ],
            ),
          ),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Center(
              child: Container(
                decoration: BoxDecoration(
                    color: Color.fromRGBO(250, 250, 250, 1),
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                height: pressed
                    ? MediaQuery.of(context).size.height / 2.1
                    : MediaQuery.of(context).size.height / 3,
                width: MediaQuery.of(context).size.width / 1.25,
                child: Form(
                  key: form1,
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: 20,
                          left: 0,
                        ),
                      ),
                      Text(
                        textAlign: TextAlign.left,
                        "FORGET PASSWORD",
                        style: TextStyle(
                            color: Color.fromRGBO(48, 48, 48, 1),
                            fontWeight: FontWeight.w800,
                            fontSize: 18,
                            fontFamily: 'Inter'),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: 15, left: 15, right: 15, bottom: 10),
                        //EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                        child: MouseRegion(
                          cursor: pressed
                              ? SystemMouseCursors.click
                              : SystemMouseCursors.text,
                          child: TextFormField(
                            enabled: pressed ? false : true,
                            controller: email1,
                            cursorColor: Color.fromRGBO(16, 16, 16, 1),
                            keyboardType: TextInputType.emailAddress,
                            //maxLines: null,
                            validator: MultiValidator([
                              RequiredValidator(errorText: "Reqiured"),
                              EmailValidator(errorText: "Invaid Email"),
                            ]),

                            decoration: InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Color.fromRGBO(16, 16, 16, 1),
                                        width: 2)),
                                //isCollapsed: true,
                                isDense: true,
                                contentPadding: EdgeInsets.all(12),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5),
                                    borderSide: BorderSide(
                                        width: 1.5,
                                        color:
                                            Color.fromRGBO(128, 128, 128, 1))),
                                hintText: 'Email',
                                hintStyle: TextStyle(
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromRGBO(128, 128, 128, 1),
                                  fontSize: 14,
                                )),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: 10, left: 15, right: 15, bottom: 15),
                        child: MouseRegion(
                          // cursor: SystemMouseCursors.text,
                          child: TextButton(
                            onPressed: () => {
                              //valid(),
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(
                              //       builder: (context) => const OTP()),
                              // ),
                              // if (email1.text.isEmpty ||
                              //     !email1.text.contains('@') ||
                              //     !email1.text.contains("."))
                              //   {}
                              // if (email1.text.isEmpty)
                              //   {
                              //     //bool g=EmailValidator(errorText: "Invalid Email");
                              //   }

                              // if (email1.text.isEmpty)
                              //   {
                              //     print("Required"),
                              //   }
                              // else if (!EmailValidator.validate(email1.text))
                              //   {
                              //     return "Invalid Email",
                              //   },

                              //valid(),
                              // setState(() {
                              //   MouseRegion(
                              //     cursor: SystemMouseCursors.basic,
                              //   );
                              // }),

                              if (form1.currentState!.validate())
                                {
                                  checkpress(),
                                  setState((() {
                                    if (pressed) {
                                      MouseRegion(
                                        cursor: SystemMouseCursors.basic,
                                      );
                                    } else {
                                      pressed = !pressed;
                                    }
                                  }))
                                },
                            },
                            //onFocusChange: ,
                            style: TextButton.styleFrom(
                              // disabledMouseCursor:
                              //     ck ? SystemMouseCursors.cell : SystemMouseCursors.basic,
                              backgroundColor: pressed
                                  ? Color.fromRGBO(250, 250, 250, 1)
                                  : Color.fromRGBO(16, 16, 16, 1),
                              padding: EdgeInsets.only(top: 15, bottom: 15),
                              //enabledMouseCursor: SystemMouseCursors.text,
                              elevation: pressed ? 5 : 10,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  side: BorderSide(
                                    color: pressed
                                        ? Color.fromRGBO(128, 128, 128, 1)
                                        : Color.fromRGBO(16, 16, 16, 1),
                                  )),
                            ),
                            child: Center(
                              child: Wrap(
                                //alignment: WrapAlignment.end,
                                // crossAxisAlignment: WrapCrossAlignment.center,
                                children: [
                                  Visibility(
                                    visible: pressed,
                                    child: Icon(
                                      Icons.check,
                                      size: 22,
                                      color: Color.fromRGBO(128, 128, 128, 128),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  // MouseCursor(),
                                  Text(
                                    pressed ? "OTP SENT" : "SEND OTP",
                                    textAlign: TextAlign.center,
                                    style: pressed
                                        ? TextStyle(
                                            color: Color.fromRGBO(
                                                128, 128, 128, 1),
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14,
                                            fontFamily: 'Inter')
                                        : TextStyle(
                                            color: Color.fromRGBO(
                                                250, 250, 250, 1),
                                            fontWeight: FontWeight.w700,
                                            fontSize: 14,
                                            fontFamily: 'Inter'),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Visibility(
                        child: Padding(
                          padding: EdgeInsets.only(
                              top: 10, left: 40, right: 40, bottom: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              OtpInput(_fieldOne, true),
                              //SizedBox(width: 0),
                              OtpInput(_fieldTwo, false),
                              //SizedBox(width: 2),
                              OtpInput(_fieldThree, false),
                              //SizedBox(width: 2),
                              OtpInput(_fieldFour, false)
                            ],
                          ),
                        ),
                        visible: pressed,
                      ),
                      Visibility(
                        visible: pressed,
                        child: Padding(
                          padding: EdgeInsets.only(
                              top: 5, left: 15, right: 15, bottom: 15),
                          child: TextButton(
                            onPressed: () => {
                              // validate1(),
                              if (_fieldOne.text.isEmpty ||
                                  _fieldTwo.text.isEmpty ||
                                  _fieldThree.text.isEmpty ||
                                  _fieldFour.text.isEmpty)
                                {
                                  // MouseRegion(
                                  //   cursor: SystemMouseCursors.text,
                                  // )
                                  setState(() {
                                    MouseRegion(
                                      cursor: SystemMouseCursors.basic,
                                    );
                                  }),
                                }
                              else
                                {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const ResetPassword()),
                                  ),
                                },
                              setState(() {
                                _otp = _fieldOne.text +
                                    _fieldTwo.text +
                                    _fieldThree.text +
                                    _fieldFour.text;
                              }),
                            },
                            style: TextButton.styleFrom(
                              backgroundColor: Color.fromRGBO(16, 16, 16, 1),
                              padding: EdgeInsets.only(top: 15, bottom: 15),
                              elevation: 10,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                            child: Center(
                                child: Text(
                              "Confirm",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color.fromRGBO(250, 250, 250, 1),
                                  fontWeight: FontWeight.w700,
                                  fontSize: 14,
                                  fontFamily: 'Inter'),
                            )),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(),
                        child: Wrap(
                          children: [
                            Text(
                              "Already a user? ",
                              style: TextStyle(
                                  color: Color.fromRGBO(128, 128, 128, 1),
                                  fontFamily: 'Inter',
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400),
                            ),
                            MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: GestureDetector(
                                onTap: () => {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => LoginPage())),
                                },
                                child: Text(
                                  "Log In",
                                  style: TextStyle(
                                      color: Color.fromRGBO(0, 0, 0, 1),
                                      fontFamily: 'Inter',
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      );
}
