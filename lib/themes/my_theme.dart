// ignore_for_file: avoid_classes_with_only_static_members, avoid_redundant_argument_values, lines_longer_than_80_chars

import 'package:flutter/material.dart';

import '../shared/shared.dart';

class MyTheme {
  static ThemeData dark = ThemeData.dark().copyWith(
    useMaterial3: true,
    switchTheme: SwitchThemeData(
      trackColor: MaterialStateProperty.all(onSurface),
      thumbColor: MaterialStateProperty.all(darkSecondary),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(darkPrimary),
        foregroundColor: MaterialStateProperty.all(darkOnSurface),
      ),
    ),
    navigationBarTheme: const NavigationBarThemeData(
      indicatorColor: darkSecondary,
    ),
    radioTheme: RadioThemeData(
      fillColor: MaterialStateProperty.resolveWith<Color?>(
        (Set<MaterialState> states) {
          return null; // Use the component's default.
        },
      ),
    ),
    primaryColor: darkPrimary,
    colorScheme: const ColorScheme.dark(
      secondaryContainer: primaryVariant,
      primary: darkPrimary,
      secondary: darkSecondary,
      surface: darkSurface,
      background: darkBackground,
      error: darkError,
      // shadow: shadow,
      onPrimary: darkOnPrimary,
      onSecondary: darkOnSecondary,
      onSurface: darkOnSurface,
      onBackground: darkOnBackground,
      onError: darkOnError,
    ),
  );

  static ThemeData light = ThemeData.light().copyWith(
    useMaterial3: true,
    primaryColor: primary,
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: secondary,
    ),
    navigationBarTheme: NavigationBarThemeData(
      indicatorColor: primary,
      elevation: 8.0,
      iconTheme: MaterialStateProperty.resolveWith(
        (Set<MaterialState> states) {
          return null; // Use the component's default.
        },
      ),
    ),
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: background,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(16),
        ),
      ),
    ),
    switchTheme: SwitchThemeData(
      trackColor: MaterialStateProperty.all(divider),
      thumbColor: MaterialStateProperty.all(primary),
    ),
    cardTheme: const CardTheme(
      margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
      elevation: 2.0,
    ),
    radioTheme: RadioThemeData(
      fillColor: MaterialStateProperty.resolveWith<Color?>(
        (Set<MaterialState> states) {
          if (states.contains(MaterialState.pressed)) return darkPrimary;
          return null; // Use the component's default.
        },
      ),
    ),
    colorScheme: _flashColorScheme,
  );
}

const _flashColorScheme = ColorScheme.light(
  primary: primary,
  secondaryContainer: primaryVariant,
  secondary: secondary,
  surface: surface,
  background: background,
  // shadow: shadow,
  error: error,
  onPrimary: onPrimary,
  onSecondary: onSecondary,
  onSurface: onSurface,
  onBackground: onBackground,
  onError: onError,
);
