import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData theme = ThemeData(
  fontFamily: GoogleFonts.roboto().fontFamily,
  typography: Typography.material2018(),
  primarySwatch: Colors.indigo,
  backgroundColor: Colors.white,
  appBarTheme: AppBarTheme(
    backgroundColor: primaryColor,
    centerTitle: true,
    elevation: 2,
  ),
  primaryColor: primaryColor,
  errorColor: dangerColor,
  buttonTheme: ButtonThemeData(
    colorScheme: ColorScheme(
      error: dangerColor,
      onError: Colors.white,
      primary: primaryPurpleColor,
      secondary: secondaryColor,
      onSecondary: Colors.white,
      background: Colors.white,
      brightness: Brightness.light,
      onPrimary: Colors.white,
      onBackground: primaryColor,
      surface: Colors.white,
      onSurface: primaryColor,
      primaryVariant: primaryColor,
      secondaryVariant: primaryColor,
    ),
  ),
  colorScheme: ColorScheme(
    background: Colors.white,
    error: dangerColor,
    secondary: primaryPurpleColor,
    primary: primaryColor,
    onPrimary: Colors.white,
    onBackground: primaryColor,
    onError: Colors.white,
    onSecondary: Colors.white,
    surface: Colors.white,
    onSurface: primaryColor,
    primaryVariant: primaryColor,
    secondaryVariant: primaryColor,
    brightness: Brightness.light,
  ),
);

Color primaryColor = const Color(0xFFF333D54);
Color primaryPurpleColor = const Color(0xFFF7460EE);
Color successColor = const Color(0xFFF22C6AB);
Color dangerColor = const Color(0xfffEF6E6E);
Color warningColor = const Color(0xfffFFBC34);
Color infoColor = const Color(0xfff4798E8);
Color secondaryColor = const Color(0xfff6C757D);
Color secondaryDarkerColor = const Color(0xfff5A6268);
Color primaryWhiteColor = Colors.white;
Color primaryBackgroundColor = const Color.fromARGB(1, 246, 246, 246);

Color textDark = const Color(0xfff343a40);
Color textMuted = const Color(0xfffa1aab2);

const double cardElevation = 10;
