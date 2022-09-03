import 'package:flutter/material.dart';

class MyTheme {
  static final light = ThemeData.light().copyWith(
    // TODO: add your theme here
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.deepPurple,
      primary: Colors.deepPurple,
      secondary: Colors.green,
    ),
    textTheme: const TextTheme().copyWith(
      headline1: const TextStyle(
        fontSize: 72.0,
        fontWeight: FontWeight.bold,
      ),

      /// App bar title
      headline6: const TextStyle(
        fontSize: 36.0,
        fontStyle: FontStyle.italic,
      ),
      bodyText2: const TextStyle(
        fontSize: 14.0,
        fontFamily: 'Hind',
      ),
    ),
  );

  static final dark = ThemeData.dark().copyWith(
    // TODO: add your theme here
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.deepPurple,
      primary: Colors.deepPurple,
      secondary: Colors.green,
    ),
  );
}
