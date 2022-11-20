import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color cyan300 = fromHex('#50c2c9');

  static Color teal300 = fromHex('#55bbaf');

  static Color black900 = fromHex('#000000');

  static Color bluegray400 = fromHex('#888888');

  static Color gray200 = fromHex('#eeeeee');

  static Color whiteA700 = fromHex('#ffffff');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
