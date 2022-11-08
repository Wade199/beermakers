import 'dart:async';
import 'package:flutter/material.dart';
import 'package:beermaker/MyHomePage.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/bgor.png"),
                fit: BoxFit.cover)),
        child: const SizedBox(
            child: Image(
                image: AssetImage("assets/images/beermakerlogo1000.png"))),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 1),
        () => Navigator.pushReplacementNamed(context, "/menu"));
  }
}
