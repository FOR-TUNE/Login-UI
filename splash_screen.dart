import 'dart:async';

import 'package:flutter/material.dart';
import 'package:ui_app/Screens/first_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  decideNavigation() {
    Future.delayed(const Duration(seconds: 5));
    () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const First()));
    };
  }

  @override
  void initstate() {
    super.initState();
    decideNavigation();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[900],
        body: Center(
            child: GestureDetector(
          onTap: () => Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => const First())),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(
                Icons.clean_hands_outlined,
                size: 75,
                color: Colors.white,
              ),
              SizedBox(
                height: 15,
              ),
              Text("CLEAN HANDS",
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    wordSpacing: 0.5,
                    letterSpacing: 0.5,
                    color: Colors.white,
                  ))
            ],
          ),
        )));
  }
}
