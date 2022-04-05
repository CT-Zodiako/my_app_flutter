import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.indigo;
  static final ThemeData linghtTheme = ThemeData.light().copyWith(
    // Color primario
    primaryColor: Colors.indigo,
    //AppBar Theme
    appBarTheme: const AppBarTheme(color: primary, elevation: 0),

    // Color tema

    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(primary: primary),
    ),

    // FloatinActionBottom
    floatingActionButtonTheme:
        const FloatingActionButtonThemeData(backgroundColor: primary),

    // elevatedButtons
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: Colors.indigo,
        shape: const StadiumBorder(),
        elevation: 0,
      ),
    ),
    inputDecorationTheme: const InputDecorationTheme(
        floatingLabelStyle: TextStyle(color: primary),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: primary),
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                topRight: Radius.circular(10))),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: primary),
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                topRight: Radius.circular(10))),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                topRight: Radius.circular(10)))),
  );
}
