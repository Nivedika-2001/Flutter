//import 'package:flutter/cupertino.dart';
//import 'package:flutter/src/foundation/key.dart';
//import 'package:flutter/src/widgets/framework.dart';
import 'package:dance_flutter/ResetPasswordSuccess.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'login.dart';
import 'ResetPasswordSuccess.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  bool _isObscure2 = true;
  bool _isChecked2 = true;
  bool press = false;
  GlobalKey<FormState> form2 = GlobalKey<FormState>();
  String password3 = "";
  TextEditingController _passwordController = TextEditingController();
  final password2 = MultiValidator([
    RequiredValidator(errorText: 'Required'),
    MinLengthValidator(7, errorText: 'Password must be more than 7 reqiured'),
    // PatternValidator(r'(?=.*?[#?!@$%^&*-])',
    //     errorText: 'passwords must have at least one special character')
  ]);
  void validate2() {
    if (form2.currentState!.validate()) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const ResetPasswordSuccess(),
        ),
      );
    }
  }

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
                child: Container(
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(250, 250, 250, 1),
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    //height: MediaQuery.of(context).size.height / 2.5,
                    width: MediaQuery.of(context).size.width / 1.25,
                    child: Form(
                      key: form2,
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
                            "RESET PASSWORD",
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
                            child: TextFormField(
                              controller: _passwordController,
                              cursorColor: Color.fromRGBO(16, 16, 16, 1),
                              // validator: MultiValidator([
                              //   RequiredValidator(errorText: "Reqiured"),
                              //   MinLengthValidator(7,
                              //       errorText: "More than 7 reqiured"),
                              // ]),
                              validator: password2,
                              onChanged: (val) => password3 = val,
                              keyboardType: TextInputType.visiblePassword,
                              obscureText: _isObscure2,
                              decoration: InputDecoration(
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Color.fromRGBO(16, 16, 16, 1),
                                          width: 2)),
                                  suffixIcon: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        _isObscure2 = !_isObscure2;
                                      });
                                    },
                                    icon: Icon(
                                      _isObscure2
                                          ? Icons.visibility
                                          : Icons.visibility_off,
                                      color: _isObscure2
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
                                  hintText: 'New Password',
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
                                // top: 5,
                                left: 15,
                                right: 15,
                                bottom: 15),
                            //EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                            child: TextFormField(
                              //controller: _confirmPassword,
                              cursorColor: Color.fromRGBO(16, 16, 16, 1),
                              keyboardType: TextInputType.visiblePassword,
                              obscureText: _isChecked2,
                              // validator: (value) {

                              // },
                              validator: (val) => MatchValidator(
                                      errorText: 'Passwords do not match')
                                  .validateMatch(val!, password3),
                              decoration: InputDecoration(
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Color.fromRGBO(16, 16, 16, 1),
                                          width: 2)),
                                  suffixIcon: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        _isChecked2 = !_isChecked2;
                                      });
                                    },
                                    icon: Icon(
                                      _isChecked2
                                          ? Icons.visibility
                                          : Icons.visibility_off,
                                      color: _isChecked2
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
                                top: 5, left: 15, right: 15, bottom: 15),
                            child: TextButton(
                              onPressed: () => {
                                validate2(),
                                // if (form2.currentState!.validate())
                                //   {
                                //     setState(() {
                                //       press = !press;
                                //     }),
                                //   },
                                // setState(() {
                                //   press = !press;
                                // }),
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(
                                //       builder: (context) =>
                                //           const ResetPassword()),
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
                                "Reset Password",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Color.fromRGBO(250, 250, 250, 1),
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
                          )
                        ],
                      ),
                    )),
              ),
            ),
          ),
        ),
      );
}
