import 'package:flutter/material.dart';

ThemeData defaultTheme() {
  return ThemeData(
    colorScheme: ColorScheme(
      onBackground: Colors.grey,
      primary: Colors.blue,
      brightness: Brightness.light,
      onError: Colors.redAccent,
      error: Colors.red,
      background: Colors.white,
      secondary: Colors.black,
      surface: Colors.transparent,
      onPrimary: Colors.lightBlueAccent,
      onSecondary: Colors.black87,
      onSurface: Colors.blueAccent,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: Colors.blueAccent[400],
        selectedItemColor: Colors.black,
        elevation: 50,
        showUnselectedLabels: false,
        unselectedItemColor: Colors.white),
    drawerTheme: DrawerThemeData(
      backgroundColor: Colors.blueAccent,
      width: 280,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(15),
            topRight: Radius.circular(15),
            bottomLeft: Radius.zero,
            topLeft: Radius.zero),
      ),
    ),
    appBarTheme: AppBarTheme(
      titleTextStyle: TextStyle(
          color: Colors.white,
          letterSpacing: 1,
          fontWeight: FontWeight.w700,
          fontSize: 20),
      backgroundColor: Colors.blueAccent[400],
      centerTitle: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.zero,
            topRight: Radius.zero,
            bottomLeft: Radius.circular(5),
            bottomRight: Radius.circular(5)),
      ),
    ),
  );
}
