import 'package:e_commerce_app/utils/theme/custom_themes/app_bar_theme.dart';
import 'package:e_commerce_app/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:e_commerce_app/utils/theme/custom_themes/check_box_theme.dart';
import 'package:e_commerce_app/utils/theme/custom_themes/chip_theme.dart';
import 'package:e_commerce_app/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:e_commerce_app/utils/theme/custom_themes/outlined_button_theme.dart';
import 'package:e_commerce_app/utils/theme/custom_themes/text_field_theme.dart';
import 'package:e_commerce_app/utils/theme/custom_themes/text_theme.dart';
import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  //light theme
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    fontFamily: 'Poppins',
    textTheme: AppTextTheme.lightTextTheme,
    appBarTheme: EAppBarTheme.lightAppBarTheme,
    chipTheme: EClipTheme.lightChipTheme,
    checkboxTheme: ECheckBoxTheme.lightCheckBoxTheme,
    bottomSheetTheme: EBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: AppElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: EOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: ETextFieldTheme.lightInputDecorationTheme,
  );

  //dark theme
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    fontFamily: 'Poppins',
    textTheme: AppTextTheme.darkTextTheme,
    appBarTheme: EAppBarTheme.darkAppBarTheme,
    chipTheme: EClipTheme.darkChipTheme,
    checkboxTheme: ECheckBoxTheme.darkCheckBoxTheme,
    bottomSheetTheme: EBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: AppElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: EOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: ETextFieldTheme.darkInputDecorationTheme,
  );
}
