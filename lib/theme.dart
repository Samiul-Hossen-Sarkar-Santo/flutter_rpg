import 'package:flutter/material.dart';

class Appcolors {
  static Color primaryColor = const Color.fromRGBO(162, 29, 19, 1);
  static Color primaryAccent = const Color.fromRGBO(120, 14, 14, 1);
  static Color secondaryColor = const Color.fromRGBO(45, 45, 45, 1);
  static Color secondaryAccent = const Color.fromRGBO(35, 35, 35, 1);
  static Color titleColor = const Color.fromRGBO(200, 200, 200, 1);
  static Color textColor = const Color.fromRGBO(150, 150, 150, 1);
  static Color successColor = const Color.fromRGBO(9, 149, 110, 1);
  static Color highlightColor = const Color.fromRGBO(212, 172, 13, 1);
}

ThemeData primaryTheme = ThemeData(
  //seed color
  colorScheme: ColorScheme.fromSeed(seedColor: Appcolors.primaryColor),

  //scaffold color
  scaffoldBackgroundColor: Appcolors.secondaryAccent,

  //app bar theme
  appBarTheme: AppBarTheme(
    backgroundColor: Appcolors.secondaryColor,
    foregroundColor: Appcolors.textColor,
    //surfaceTintColor: Colors.transparent,
    centerTitle: true,
  ),

  //text theme
  textTheme: TextTheme(
    titleMedium: TextStyle(
      color: Appcolors.titleColor,
      fontSize: 18,
      fontWeight: FontWeight.bold,
      letterSpacing: 1,
    ),
    headlineMedium: TextStyle(
      color: Appcolors.titleColor,
      fontSize: 16,
      fontWeight: FontWeight.bold,
      letterSpacing: 1,
    ),
    bodyMedium: TextStyle(
      color: Appcolors.textColor,
      fontSize: 16,
      letterSpacing: 1,
    ),
  ),

  //card theme
  cardTheme: CardTheme(
    color: Appcolors.secondaryColor.withOpacity(0.5),
    shape: const RoundedRectangleBorder(),
    shadowColor: Colors.transparent,
    margin: const EdgeInsets.only(bottom: 8),
    surfaceTintColor: Colors.transparent,
  ),

  //Text fields
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: Appcolors.secondaryColor,
    border: InputBorder.none,
    labelStyle: TextStyle(color: Appcolors.textColor),
    prefixIconColor: Appcolors.textColor,
  ),
);
