import 'package:flutter/material.dart';
import 'login.dart';
import 'signup.dart';

class LogoPage extends StatefulWidget {
  const LogoPage({Key? key}) : super(key: key);

  @override
  State<LogoPage> createState() => _LogoPageState();
}

class _LogoPageState extends State<LogoPage> {
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
            body: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height / 1.25,
                ),
                Center(
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginPage()),
                      );
                    },
                    style: TextButton.styleFrom(
                        //primary: Colors.black,
                        backgroundColor: Color.fromRGBO(250, 250, 250, 1),
                        //onSurface: Colors.black,
                        elevation: 20,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        padding: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width / 3,
                            right: MediaQuery.of(context).size.width / 3,
                            top: 9,
                            bottom: 9)),
                    child: Text(
                      "LOGIN",
                      style: TextStyle(
                          color: Color.fromRGBO(48, 48, 48, 1),
                          fontWeight: FontWeight.w700,
                          fontSize: 14,
                          fontFamily: 'Inter'),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Wrap(
                  children: [
                    Text(
                      "Need an account? ",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                        onTap: () => {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => signUp())),
                        },
                        child: Text(
                          " Sign Up",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'Inter',
                            fontSize: 12,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      );
}
