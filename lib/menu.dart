import 'package:flutter/material.dart';
import 'package:beermaker/ButtonMenu.dart';
import 'package:beermaker/appbar.dart';
import 'package:beermaker/logoandtext.dart';

// ignore: use_key_in_widget_constructors
class Menu extends StatefulWidget {
  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarBeerMaker(),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          ButtonMenu(
              text: "etapes",
              action: () => Navigator.pushNamed(context, "/etapes")),
          ButtonMenu(
              text: "PageRecette",
              action: () => Navigator.pushNamed(context, "/PageRecette")),
          ButtonMenu(
              text: "information",
              action: () => Navigator.pushNamed(context, "/fabrication")),
        ]),
      ),
    );
  }
}
