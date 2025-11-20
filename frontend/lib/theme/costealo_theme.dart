// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class CostealoColors {
  static const Color primary = Color(0xFF5F8F6B);
  static const Color primaryDark = Color(0xFF335F3F);
  static const Color primaryLight = Color(0xFFE6F3E8);

  static const Color card = Color(0xFFF7FBF7);
  static const Color cardSoft = Color(0xFFEDF7EE);

  static const Color accent = Color(0xFF8ECF9B);

  static const Color text = Color(0xFF26412F);
  static const Color textMuted = Color(0xFF7A8C80);

  static const Color danger = Color(0xFFE57373);
}

class CostealoTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,

      // --- ColorScheme corregido para evitar warnings deprecated ---
      colorScheme: ColorScheme.fromSeed(
        seedColor: CostealoColors.primary,
        primary: CostealoColors.primary,
        secondary: CostealoColors.accent,
        surface: CostealoColors.primaryLight, // << CAMBIO CLAVE
      ),

      scaffoldBackgroundColor: CostealoColors.primaryLight,

      appBarTheme: const AppBarTheme(
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: CostealoColors.text,
      ),

      textTheme: const TextTheme(
        headlineMedium: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: CostealoColors.text,
        ),
        bodyMedium: TextStyle(
          fontSize: 14,
          color: CostealoColors.text,
        ),
      ),

      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: CostealoColors.primary,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(16)),
          ),
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 14),
        ),
      ),

      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: CostealoColors.textMuted),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: CostealoColors.primary),
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      ),
    );
  }
}
