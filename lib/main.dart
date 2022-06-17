import 'package:drink_water/historic.dart';
import 'package:drink_water/home.dart';
import 'package:drink_water/navigation_bar.dart';
import 'package:drink_water/settings.dart';
import 'package:drink_water/theme_default.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    routes: {
      "/ButtonsPage": (context) => ButtonsPage(),
      "/HomePage": (context) => HomePage(),
      "/Historic": (context) => Historic(),
      "/Settings": (context) => Settings()
    },
    debugShowCheckedModeBanner: false,
    theme: defaultTheme(),
    home: ButtonsPage(),
  ));
}
