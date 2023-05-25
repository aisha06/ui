import 'dart:async';
import 'package:flutter/material.dart';
import 'package:ui/Page/Onbording_Screen/onbording_screen.dart';

class SplashScreen extends StatefulWidget {


  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 4),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => OnbordingScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(58.0),
        child: Image.asset('assets/images/logo.png'),
      )),
    );
  }
}
