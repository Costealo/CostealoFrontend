import 'package:flutter/material.dart';

class CostealoColors {
  // Colores base que ya tenías
  static const Color primary = Color(0xFF5F8F6B);        // barra lateral / botones
  static const Color primaryDark = Color(0xFF335F3F);    // énfasis
  static const Color primaryLight = Color(0xFFE6F3E8);   // fondo general
  static const Color card = Color(0xFFF7FBF7);           // tarjetas
  static const Color cardSoft = Color(0xFFEDF7EE);       // tarjetas suaves
  static const Color accent = Color(0xFF8ECF9B);         // detalles
  static const Color text = Color(0xFF26412F);           // texto principal
  static const Color textSoft = Color(0xFF7A9B80);       // texto secundario

  // ✅ Alias nuevos para que coincidan con profile_screen.dart
  static const Color cardBackground = card;              // usado en ProfileScreen
  static const Color iconMuted = textSoft;

  static Color? get babyGreen => null;               // iconos secundarios
}

ThemeData buildCostealoTheme() {
  return ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: CostealoColors.primaryLight,
    colorScheme: ColorScheme.fromSeed(
      seedColor: CostealoColors.primary,
      primary: CostealoColors.primary,
      background: CostealoColors.primaryLight,
    ),
    textTheme: const TextTheme(
      headlineMedium: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w600,
        color: CostealoColors.text,
      ),
      titleMedium: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: CostealoColors.text,
      ),
      bodyMedium: TextStyle(
        fontSize: 14,
        color: CostealoColors.textSoft,
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Colors.white,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide.none,
      ),
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 12,
      ),
    ),
  );
}
