import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'LogoPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 3000),
    );
    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/open': (context) => LogoPage(),
      },
      home: AnimatedSplashScreen(
        duration: 2000,
        splash: FadeTransition(
          opacity: Tween<double>(begin: 0, end: 1).animate(
            CurvedAnimation(
              parent: _animationController,
              // curve: Curves.easeInOut,
              // reverseCurve: Curves.easeInOut,
              // animation: _animationController,
              curve: Interval(0.0, 0.05, curve: Curves.easeInOut),
              reverseCurve: Interval(0.95, 1.0, curve: Curves.easeInOut),
            ),
          ),
          child: Image.asset(
            'assets/Rich_logo.jpg',
            width: 500,
            height: 500,
          ),
        ),
        splashIconSize: 700,

        // splash: Image.asset(
        //   'assets/Rich_logo.jpg',
        // ),
        nextScreen: LogoPage(),
        splashTransition: SplashTransition.fadeTransition,
        backgroundColor: Colors.black,
      ),
    );
  }
}
