import 'package:flutter/material.dart';
import 'package:beermaker/SplashScreen.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage("assets/images/bgor.png"),
          fit: BoxFit.cover,
        )),
        child: const SizedBox(
            child: Image(
          image: AssetImage('assets/images/beermakerlogo1000.png'),
        )),
      ),
    );
  }
}
