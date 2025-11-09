import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static const Color primaryColor = Color(0xFFFF7A00); // Laranja queimado
  static const Color secondaryColor = Color(0xFFE63946); // Vermelho suave
  static const Color supportColor = Color(0xFFF4A300); // Amarelo mostarda
  static const Color lightNeutralColor = Color(0xFFFFF6E5); // Creme
  static const Color darkNeutralColor = Color(0xFF2C2C2C); // Cinza grafite

  static final ThemeData themeData = ThemeData(
    primaryColor: primaryColor,
    scaffoldBackgroundColor: lightNeutralColor,
    colorScheme: const ColorScheme.light(
      primary: primaryColor,
      secondary: secondaryColor,
      surface: lightNeutralColor,
      onPrimary: Colors.white,
      onSecondary: Colors.white,
      onSurface: darkNeutralColor,
      background: lightNeutralColor,
      error: secondaryColor,
      onBackground: darkNeutralColor,
      onError: Colors.white,
      brightness: Brightness.light,
    ),
    textTheme: GoogleFonts.latoTextTheme().copyWith(
      displayLarge: GoogleFonts.pacifico(
          fontSize: 48,
          fontWeight: FontWeight.bold,
          color: darkNeutralColor),
      displayMedium: GoogleFonts.pacifico(
          fontSize: 36,
          fontWeight: FontWeight.bold,
          color: darkNeutralColor),
      headlineMedium: GoogleFonts.lato(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: darkNeutralColor),
      bodyLarge: GoogleFonts.lato(
          fontSize: 16,
          color: darkNeutralColor),
      bodyMedium: GoogleFonts.lato(
          fontSize: 14,
          color: darkNeutralColor),
      labelLarge: GoogleFonts.lato(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      iconTheme: IconThemeData(color: darkNeutralColor),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: primaryColor,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
      ),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Colors.white,
      selectedItemColor: primaryColor,
      unselectedItemColor: Colors.grey,
      showUnselectedLabels: true,
      type: BottomNavigationBarType.fixed,
    ),
  );
}
