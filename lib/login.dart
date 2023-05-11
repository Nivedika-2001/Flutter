import 'package:dance_flutter/BottomBar.dart';
import 'package:flutter/material.dart';
import 'signUp.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'ForgotPassword.dart';
import 'BottomBar.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isObscure = true;
  bool _isChecked = false;
  bool logo = false;
  GlobalKey<FormState> form = GlobalKey<FormState>();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  void validate1() {
    if (form.currentState!.validate()) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const BottomBar()),
      );

      // Builder(
      //   builder: (context) => BottomBar(),
      // );
    } else {
      print("error");
    }
  }

  @override
  void initState() {
    _loadUserEmailPassword();
    super.initState();
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
              child: FittedBox(
                fit: BoxFit.cover,
                child: Container(
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(250, 250, 250, 1),
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  // height: MediaQuery.of(context).size.height / 2.1,
                  width: MediaQuery.of(context).size.width / 1.25,
                  child: Form(
                    key: form,
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
                          "LOGIN",
                          style: TextStyle(
                              color: Color.fromRGBO(48, 48, 48, 1),
                              fontWeight: FontWeight.w800,
                              fontSize: 18,
                              fontFamily: 'Inter'),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              top: 10, left: 15, right: 15, bottom: 10),
                          //EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                          child: TextFormField(
                            controller: _emailController,
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
                        Padding(
                          padding: EdgeInsets.only(
                              top: 5, left: 15, right: 15, bottom: 10),
                          //EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                          child: TextFormField(
                            controller: _passwordController,
                            cursorColor: Color.fromRGBO(16, 16, 16, 1),
                            validator: MultiValidator([
                              RequiredValidator(errorText: "Reqiured"),
                              MinLengthValidator(7,
                                  errorText:
                                      "Password must be at least 7 digits long"),
                            ]),
                            keyboardType: TextInputType.visiblePassword,
                            obscureText: _isObscure,
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
                                )),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              top: 5, left: 15, right: 15, bottom: 10),
                          child: Container(
                            child: Row(
                              //  runSpacing: MediaQuery.of(context).size.width / 2,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Checkbox(
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(3))),
                                      //splashRadius: 2,
                                      side: MaterialStateBorderSide.resolveWith(
                                        (Set<MaterialState> states) {
                                          if (states.contains(
                                              MaterialState.selected)) {
                                            return const BorderSide(
                                                width: 2,
                                                color: Color.fromRGBO(
                                                    1, 16, 16, 1));
                                          }
                                          return const BorderSide(
                                              width: 1,
                                              color: Color.fromRGBO(
                                                  128, 128, 128, 1));
                                        },
                                      ),
                                      checkColor:
                                          Color.fromRGBO(250, 250, 250, 1),
                                      value: _isChecked,
                                      activeColor: Color.fromRGBO(1, 16, 16, 1),
                                      //activeColor:Color.fromRGBO(128, 128, 128, 1),
                                      onChanged: (value) {
                                        //_handleRemeberme;
                                        bool? _isChecked = value;
                                        SharedPreferences.getInstance().then(
                                          (prefs) {
                                            // prefs.setBool("remember_me", value);
                                            prefs.setString(
                                                'email', _emailController.text);
                                            prefs.setString('password',
                                                _passwordController.text);
                                          },
                                        );
                                        setState(() {
                                          bool? _isChecked = value;
                                        });
                                      },
                                    ),
                                    Text("Remember me",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            color: Color.fromRGBO(
                                                128, 128, 128, 1),
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            fontFamily: 'Inter')),
                                  ],
                                ),
                                MouseRegion(
                                  cursor: SystemMouseCursors.click,
                                  child: GestureDetector(
                                    onTap: () => {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  ForgotPassword())),
                                    },
                                    child: Text("Forget Password?",
                                        textAlign: TextAlign.right,
                                        style: TextStyle(
                                            color: Color.fromRGBO(
                                                128, 128, 128, 1),
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            fontFamily: 'Inter')),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              top: 5, left: 15, right: 15, bottom: 15),
                          child: TextButton(
                            onPressed: () => {
                              validate1(),
                              setState(() {
                                logo = !logo;
                              }),
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(
                              //       builder: (context) => const HomePage()),
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
                        Padding(
                          padding: EdgeInsets.only(),
                          child: Wrap(
                            children: [
                              Text(
                                "Need an account? ",
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
                                            builder: (context) => signUp())),
                                  },
                                  child: Text(
                                    "Sign Up",
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
                          height: 35,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      );
  // void _handleRemeberme(bool value) {
  //   print("Handle Rember Me");
  //   _isChecked = value;
  //   SharedPreferences.getInstance().then(
  //     (prefs) {
  //       prefs.setBool("remember_me", value);
  //       prefs.setString('email', _emailController.text);
  //       prefs.setString('password', _passwordController.text);
  //     },
  //   );
  //   setState(() {
  //     _isChecked = value;
  //   });
  // }

  void _loadUserEmailPassword() async {
    print("Load Email");
    try {
      SharedPreferences _prefs = await SharedPreferences.getInstance();
      var _email = _prefs.getString("email") ?? "";
      var _password = _prefs.getString("password") ?? "";
      var _remeberMe = _prefs.getBool("remember_me") ?? false;

      print(_remeberMe);
      print(_email);
      print(_password);
      if (_remeberMe) {
        setState(() {
          _isChecked = true;
        });
        //_emailController.text = _email ?? "";
        //_passwordController.text = _password ?? "";
      }
    } catch (e) {
      print(e);
    }
  }
}

//}
