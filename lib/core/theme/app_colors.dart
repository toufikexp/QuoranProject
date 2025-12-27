import 'package:flutter/material.dart';

class AppColors {
  // Primary Colors
  static const Color deepEmerald = Color(0xFF2E7D32);
  static const Color gold = Color(0xFFFFD700);
  static const Color softWhite = Color(0xFFF8F8F8);
  
  // Gradient Colors
  static const Color gradientStart = Color(0xFF1B5E20); // Deep emerald
  static const Color gradientEnd = Color(0xFFFFF9C4); // Soft cream/gold
  
  // Dark Mode Colors
  static const Color darkBackground = Color(0xFF0D1B0F);
  static const Color darkCard = Color(0xFF1A2E1D);
  
  // Glassmorphism
  static Color glassWhite = Colors.white.withOpacity(0.1);
  static Color glassBorder = Colors.white.withOpacity(0.2);
  
  // Shadows
  static List<BoxShadow> get cardShadow => [
    BoxShadow(
      color: Colors.black.withOpacity(0.1),
      blurRadius: 20,
      offset: const Offset(0, 10),
    ),
  ];
  
  static List<BoxShadow> get goldGlow => [
    BoxShadow(
      color: gold.withOpacity(0.4),
      blurRadius: 20,
      spreadRadius: 2,
    ),
  ];
}

