import 'package:flutter/material.dart';

extension NumExtension on num {
  //? SPACE EXTENSION
  Widget get height => SizedBox(height: toDouble());
  Widget get width => SizedBox(width: toDouble());
  Widget get square => SizedBox(width: toDouble(), height: toDouble());

  Color get toColor {
    final intValue = toInt();
    // 0xFFaabbcc 0xaabbcc
    if (intValue < 0xFF000000) {
      return Color(intValue + 0xFF000000);
    }
    return Color(intValue);
  }
}
