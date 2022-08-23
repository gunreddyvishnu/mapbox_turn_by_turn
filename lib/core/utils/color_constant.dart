import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color gray2007a = fromHex('#7aefefef');

  static Color black9003f = fromHex('#3f000000');

  static Color teal400 = fromHex('#34ac9a');

  static Color tealA400E5 = fromHex('#e539e3c5');

  static Color teal300 = fromHex('#3dc0a9');

  static Color black900 = fromHex('#000000');

  static Color teal700 = fromHex('#24736f');

  static Color tealA20099 = fromHex('#9940f9d8');

  static Color bluegray6007f = fromHex('#7f5d7b7b');

  static Color gray903 = fromHex('#082337');

  static Color bluegray9007f = fromHex('#7f0c2535');

  static Color gray600 = fromHex('#7a7a7a');

  static Color gray402 = fromHex('#b8b8b8');

  static Color whiteA700E5 = fromHex('#e5ffffff');

  static Color gray400 = fromHex('#c4c4c4');

  static Color gray901 = fromHex('#242424');

  static Color whiteA700A2 = fromHex('#a2ffffff');

  static Color gray404 = fromHex('#b7b7b7');

  static Color gray900 = fromHex('#282828');

  static Color bluegray100 = fromHex('#d1d1d1');

  static Color gray300 = fromHex('#dadada');

  static Color tealA400 = fromHex('#3ae3c5');

  static Color teal9007f = fromHex('#7f15414f');

  static Color bluegray900 = fromHex('#343434');

  static Color bluegray701 = fromHex('#266b68');

  static Color bluegray700 = fromHex('#325b5b');

  static Color bluegray600 = fromHex('#637170');

  static Color bluegray400 = fromHex('#8d8d8d');

  static Color whiteA700 = fromHex('#ffffff');

  static Color bluegray903 = fromHex('#1a3a45');

  static Color bluegray902 = fromHex('#0d2634');

  static Color black90059 = fromHex('#59070f0e');

  static Color bluegray1007a = fromHex('#7ad9d9d9');

  static Color bluegray901 = fromHex('#1c2f30');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
