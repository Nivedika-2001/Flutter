//import 'package:flutter/cupertino.dart';
//import 'package:flutter/src/foundation/key.dart';
//import 'package:flutter/src/widgets/framework.dart';
import 'package:dance_flutter/login.dart';
import 'package:flutter/material.dart';
import 'login.dart';

class ResetPasswordSuccess extends StatefulWidget {
  const ResetPasswordSuccess({Key? key}) : super(key: key);

  @override
  State<ResetPasswordSuccess> createState() => _ResetPasswordSuccessState();
}

class _ResetPasswordSuccessState extends State<ResetPasswordSuccess> {
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
              child: Container(
                decoration: BoxDecoration(
                    color: Color.fromRGBO(250, 250, 250, 1),
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                height: MediaQuery.of(context).size.height / 2.5,
                width: MediaQuery.of(context).size.width / 1.25,
                child: Center(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        child: IconButton(
                          onPressed: null,
                          iconSize: 100,
                          icon: ImageIcon(
                            AssetImage(
                              "assets/check.png",
                            ),
                            color: Color.fromRGBO(48, 48, 48, 1),
                            size: 100,
                          ),
                        ),
                      ),
                      // SizedBox(
                      //   height: 20,
                      // ),
                      Text(
                        "Password reset successfully",
                        style: TextStyle(
                            fontWeight: FontWeight.w800,
                            fontFamily: "Inter",
                            color: Color.fromRGBO(48, 48, 48, 1),
                            fontSize: 24),
                        textAlign: TextAlign.center,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: 25, left: 19, right: 19, bottom: 10),
                        child: TextButton(
                          onPressed: () => {
                            // validate1(),
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const LoginPage()),
                            ),
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
                            "LOGIN",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Color.fromRGBO(250, 250, 250, 1),
                                fontWeight: FontWeight.w700,
                                fontSize: 14,
                                fontFamily: 'Inter'),
                          )),
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
