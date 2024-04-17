import 'package:flutter/material.dart';

class AppColors {
  // * Convert Color From Hex #FFFFFF to Flutter 0xFFFFFFFF
  static Color colorFromHex(String hexColor, [String opacity = 'FF']) {
    /// [hexColor] #ffffff
    // * Delete #
    String color = hexColor.replaceAll('#', '');
    // color = FFFFFF;
    String opacityColor = '$opacity$color'; // FFFFFFFF

    return Color(int.parse(opacityColor, radix: 16));
    // 0xFFFFFFFF
  }

  static final Color black = colorFromHex('#000000');
  static final Color gray900 = colorFromHex('#212429');
  static final Color gray700 = colorFromHex('#ACB5BD');
  static final Color gray200 = colorFromHex('#C9CCCF');
  static final Color gray100 = colorFromHex('#DDE2E5');
  static final Color gray50 = colorFromHex('#F6F7F7');
  static final Color white = colorFromHex('#ffffff');
  static final Color red600 = colorFromHex('#EC1B40');

  static final List<Color> linearBoarding = [Colors.black, Colors.white];
}
