import 'package:flutter/material.dart';

class EOutlinedButtonTheme {
  EOutlinedButtonTheme._();

  static OutlinedButtonThemeData lightOutlinedButtonTheme =
      OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: Colors.black,
      side: const BorderSide(color: Colors.black),
      textStyle: const TextStyle(
          fontSize: 16, fontWeight: FontWeight.w600, color: Colors.black),
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14.0),
      ),
    ),
  );

  static OutlinedButtonThemeData darkOutlinedButtonTheme =
      OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: Colors.white,
      side: const BorderSide(color: Colors.blueAccent),
      textStyle: const TextStyle(
          fontSize: 16, fontWeight: FontWeight.w600, color: Colors.white),
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14.0),
      ),
    ),
  );
}
