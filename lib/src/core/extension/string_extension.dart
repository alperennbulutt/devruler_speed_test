// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

extension OptionalStringExtension on String? {
  //? NULL SAFETY
  String get orEmpty => this ?? '';

  //? TEXTS
  Text titleMedium({
    Color color = Colors.black,
    double fontSize = 20,
    FontWeight fontWeight = FontWeight.bold,
    TextAlign? textAlign,
  }) {
    return Text(
      orEmpty,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
      ),
      textAlign: textAlign,
    );
  }

  Text titleMediumWhite({
    Color color = Colors.white,
    double fontSize = 20,
    FontWeight fontWeight = FontWeight.bold,
    TextAlign? textAlign,
  }) {
    return Text(
      orEmpty,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
      ),
      textAlign: textAlign,
    );
  }

  Text titleSmall({
    Color color = Colors.black,
    double fontSize = 16,
    FontWeight fontWeight = FontWeight.bold,
    TextAlign? textAlign,
  }) {
    return Text(
      orEmpty,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
      ),
      textAlign: textAlign,
    );
  }

  Text titleSmallWhite({
    Color color = Colors.white,
    double fontSize = 16,
    FontWeight fontWeight = FontWeight.bold,
    TextAlign? textAlign,
  }) {
    return Text(
      orEmpty,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
      ),
      textAlign: textAlign,
    );
  }

  Text titleLarge({
    Color color = Colors.black,
    double fontSize = 24,
    FontWeight fontWeight = FontWeight.bold,
    TextAlign? textAlign,
  }) {
    return Text(
      orEmpty,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
      ),
      textAlign: textAlign,
    );
  }

  Text titleLargeWhite({
    Color color = Colors.white,
    double fontSize = 24,
    FontWeight fontWeight = FontWeight.bold,
    TextAlign? textAlign,
  }) {
    return Text(
      orEmpty,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
      ),
      textAlign: textAlign,
    );
  }

  String turkishLowerCase() {
    return orEmpty
        .replaceAll('I', 'ı')
        .replaceAll('İ', 'i')
        .replaceAll('Ğ', 'ğ')
        .replaceAll('Ü', 'ü')
        .replaceAll('Ş', 'ş')
        .replaceAll('Ö', 'ö')
        .replaceAll('Ç', 'ç')
        .toLowerCase();
  }
}
