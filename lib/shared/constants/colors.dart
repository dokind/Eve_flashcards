import 'package:flutter/material.dart';

const lightGray = Color(0xFFF6F6F6);
const darkGray = Color(0xFF9F9F9F);
const black = Color(0xFF000000);
const white = Color(0xFFFFFFFF);

Color hexToColor(String hex) {
  assert(RegExp(r'^#([0-9a-fA-F]{6})|([0-9a-fA-F]{8})$').hasMatch(hex),
      'hex color must be #rrggbb or #rrggbbaa');

  return Color(
    int.parse(hex.substring(1), radix: 16) +
        (hex.length == 7 ? 0xff000000 : 0x00000000),
  );
}
