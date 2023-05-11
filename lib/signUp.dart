//import 'dart:html';

import 'package:flutter/material.dart';
import 'login.dart';
//import 'package:email_validator/email_validator.dart';
import 'package:form_field_validator/form_field_validator.dart';

class signUp extends StatefulWidget {
  const signUp({Key? key}) : super(key: key);

  @override
  State<signUp> createState() => _signUpState();
}

class _signUpState extends State<signUp> {
  bool _isObscure = true;
  bool _isObscure1 = true;
  String password = "";

  final passwordValidator = MultiValidator([
    RequiredValidator(errorText: 'Required'),
    MinLengthValidator(7, errorText: 'Password must be more than 7 reqiured'),
    // PatternValidator(r'(?=.*?[#?!@$%^&*-])',
    //     errorText: 'passwords must have at least one special character')
  ]);

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController email = TextEditingController();
  //TextEditingController _confirmPassword = TextEditingController();
  //TextEditingController password = TextEditingController();
  void validate() {
    if (formKey.currentState!.validate()) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const LoginPage(),
        ),
      );
      //print("ok");
    } else {
      print("error");
    }
  }

  // String emailValidate(value) {
  //   if (value.isEmpty) {
  //     return "Error";
  //   } else {
  //     return null;
  //   }
  // }

  @override
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
              child: FittedBox(
                fit: BoxFit.cover,
                child: Center(
                  child: Container(
                    //margin: EdgeInsets.all(15),
                    // padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(250, 250, 250, 1),
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    //height: MediaQuery.of(context).size.height / 2.1,
                    width: MediaQuery.of(context).size.width / 1.25,
                    child: Form(
                      // autovalidateMode: AutovalidateMode.onUserInteraction,
                      key: formKey,
                      child: Column(
                        //crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              top: 15,
                              // left: 0,
                              // bottom: 5,
                            ),
                          ),
                          Text(
                            textAlign: TextAlign.left,
                            "SIGN UP",
                            style: TextStyle(
                                color: Color.fromRGBO(48, 48, 48, 1),
                                fontWeight: FontWeight.w800,
                                fontSize: 18,
                                fontFamily: 'Inter'),
                          ),
                          SizedBox(height: 5),
                          Padding(
                            padding: EdgeInsets.only(
                                top: 5, left: 15, right: 15, bottom: 10),
                            child: TextFormField(
                              controller: email,
                              cursorColor: Color.fromRGBO(16, 16, 16, 1),
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Color.fromRGBO(16, 16, 16, 1),
                                        width: 2)),
                                isDense: true,
                                contentPadding: EdgeInsets.all(14),
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
                                ),
                              ),
                              // validator: (val) {
                              //   if (val == null || val.isEmpty) {
                              //     return s1;
                              //   }
                              //   return null;
                              // },
                              // validator: EmailValidator(errorText: "Invalid Email"),
                              // scrollPadding: EdgeInsets.all(5),

                              validator: MultiValidator([
                                RequiredValidator(
                                  errorText: "Required",
                                ),
                                EmailValidator(
                                  errorText: "Enter a valid Email",
                                ),
                              ]),
                            ),
                          ),
                          // SizedBox(
                          //   height: 10,
                          // ),
                          Padding(
                            padding: EdgeInsets.only(
                                // top: 5,
                                left: 15,
                                right: 15,
                                bottom: 10),
                            //EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                            child: TextFormField(
                              cursorColor: Color.fromRGBO(16, 16, 16, 1),
                              keyboardType: TextInputType.visiblePassword,
                              // validator: MultiValidator([
                              //   RequiredValidator(errorText: "Reqiured"),
                              //   MinLengthValidator(7,
                              //       errorText: "More than 7 reqiured"),
                              // ]),
                              validator: passwordValidator,
                              obscureText: _isObscure,
                              onChanged: (val) => password = val,
                              decoration: InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Color.fromRGBO(16, 16, 16, 1),
                                        width: 2)),
                                suffixIcon: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      _isObscure = !_isObscure;
                                    });
                                  },
                                  icon: Icon(
                                    _isObscure
                                        ? Icons.visibility
                                        : Icons.visibility_off,
                                    color: _isObscure
                                        ? Color.fromRGBO(128, 128, 128, 1)
                                        : Color.fromRGBO(16, 16, 16, 1),
                                  ),
                                ),
                                //isCollapsed: true,
                                isDense: true,

                                contentPadding: EdgeInsets.all(12),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5),
                                    borderSide: BorderSide(
                                        width: 1.5,
                                        color:
                                            Color.fromRGBO(128, 128, 128, 1))),
                                hintText: 'Password',
                                hintStyle: TextStyle(
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromRGBO(128, 128, 128, 1),
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ),
                          // SizedBox(
                          //   height: 10,
                          // ),
                          Padding(
                            padding: EdgeInsets.only(
                                // top: 5,
                                left: 15,
                                right: 15,
                                bottom: 10),
                            //EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                            child: TextFormField(
                              //controller: _confirmPassword,
                              cursorColor: Color.fromRGBO(16, 16, 16, 1),
                              keyboardType: TextInputType.visiblePassword,
                              obscureText: _isObscure1,
                              // validator: (value) {

                              // },
                              validator: (val) => MatchValidator(
                                      errorText: 'Passwords do not match')
                                  .validateMatch(val!, password),
                              decoration: InputDecoration(
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Color.fromRGBO(16, 16, 16, 1),
                                          width: 2)),
                                  suffixIcon: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        _isObscure1 = !_isObscure1;
                                      });
                                    },
                                    icon: Icon(
                                      _isObscure1
                                          ? Icons.visibility
                                          : Icons.visibility_off,
                                      color: _isObscure1
                                          ? Color.fromRGBO(128, 128, 128, 1)
                                          : Color.fromRGBO(16, 16, 16, 1),
                                    ),
                                  ),
                                  //isCollapsed: true,
                                  isDense: true,
                                  contentPadding: EdgeInsets.all(12),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5),
                                      borderSide: BorderSide(
                                          width: 1.5,
                                          color: Color.fromRGBO(
                                              128, 128, 128, 1))),
                                  hintText: 'Confirm Password',
                                  hintStyle: TextStyle(
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w400,
                                    color: Color.fromRGBO(128, 128, 128, 1),
                                    fontSize: 14,
                                  )),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                top: 9, left: 15, right: 15, bottom: 15),
                            child: TextButton(
                              onPressed: () => {
                                validate(),
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(
                                //     builder: (context) => const LoginPage(),
                                //   ),
                                // ),
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
                                "SIGN UP",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Color.fromRGBO(250, 250, 250, 1),
                                    //color: Color.fromARGB(255, 129, 50, 50),

                                    fontWeight: FontWeight.w700,
                                    fontSize: 14,
                                    fontFamily: 'Inter'),
                              )),
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
                                              builder: (context) =>
                                                  LoginPage())),
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
                          SizedBox(
                            height: 30,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      );
  // void validate(String val) {
  //   if (val.isEmpty) {
  //     setState(() {
  //       _errorMessage = "Email can not be empty";
  //     });
  //   } else if (!EmailValidator.validate(val, true)) {
  //     setState(() {
  //       _errorMessage = "Invalid Email Address";
  //     });
  //   } else {
  //     setState(() {
  //       _errorMessage = "";
  //     });
  //   }
  // }

}
//}
