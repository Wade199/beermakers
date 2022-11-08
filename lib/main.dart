import 'package:beermaker/MyHomePage.dart';
import 'package:beermaker/etapes.dart';
import 'package:flutter/material.dart';
import 'package:beermaker/menu.dart';
import 'package:beermaker/pagerecettes.dart';
import 'SplashScreen.dart';

import 'Fabrication.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'BEERMAKER',
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
        home: SplashScreen(),
        routes: <String, WidgetBuilder>{
          '/fabrication': (BuildContext context) => const fabrication(),
          '/PageRecette': (BuildContext context) => const PageRecette(),
          '/menu': (BuildContext context) => Menu(),
          '/etapes': (BuildContext context) => const Etapes(),
        });
  }
}
