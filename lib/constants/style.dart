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
    brightness: Brightness.light,
  ),
);

Color primaryColor = const Color(0xfff333d54);
Color primaryPurpleColor = const Color(0xfff7460ee);
Color successColor = const Color(0xfff22c6ab);
Color dangerColor = const Color(0xfffef6e6e);
Color warningColor = const Color(0xfffffbc34);
Color infoColor = const Color(0xfff4798e8);
Color secondaryColor = const Color(0xfff6c757d);
Color secondaryDarkerColor = const Color(0xfff5a6268);
Color primaryWhiteColor = Colors.white;
Color primaryBackgroundColor = const Color.fromARGB(1, 246, 246, 246);

Color textDark = const Color(0xfff343a40);
Color textMuted = const Color(0xfffa1aab2);

const double cardElevation = 10;
