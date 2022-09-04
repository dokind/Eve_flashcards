import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

/// dark [ThemeData] colors
const darkPrimary = Color(0xFFBB86FC);
const primaryVariant = Color(0xFF4A148C);
const darkSecondary = Color(0xFF03DAC6);
const darkBackground = Color(0xFF121212);
const darkSurface = Color(0xFF121212);
const darkError = Color(0xFFCF6679);
const darkOnPrimary = Color(0xFF000000);
const darkOnSecondary = Color(0xFF000000);
const darkOnBackground = Color(0xFFFFFFFF);
const darkOnSurface = Color(0xFFFFFFFF);
const darkOnError = Color(0xFF000000);

// const shadow = Color(0xFF121212);

/// light [ThemeData] colors
const primary = Color(0xFF6200EE);
const secondary = Color(0xFF03DAC6);
const secondryVariant = Color(0xFF018786);
const divider = Color(0xFFBDBDBD);
const background = Color(0xFFFFFFFF);
const surface = Color(0xFFFFFFFF);
const error = Color(0xFFB00020);
const onPrimary = Color(0xFFFFFFFF);
const onSecondary = Color(0xFF000000);
const onBackground = Color(0xFF000000);
const onSurface = Color(0xFF000000);
const onError = Color(0xFFFFFFFF);

Color hexToColor(String hex) {
  assert(RegExp(r'^#([0-9a-fA-F]{6})|([0-9a-fA-F]{8})$').hasMatch(hex),
      'hex color must be #rrggbb or #rrggbbaa');

  return Color(
    int.parse(hex.substring(1), radix: 16) +
        (hex.length == 7 ? 0xff000000 : 0x00000000),
  );
}
