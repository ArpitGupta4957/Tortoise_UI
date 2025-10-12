import 'package:flutter/material.dart';

/// Design tokens for the app: colors, spacing, typography sizes, radii and shadows.
/// Use these constants throughout the UI for pixel-consistent styling.

class AppColors {
  AppColors._();

  static const Color primary = Color(0xFF0B7A4A); // Tortoise green-ish
  static const Color primaryVariant = Color(0xFF065C36);
  static const Color accent = Color(0xFF00BFA6);

  static const Color background = Color(0xFFFFFFFF);
  static const Color surface = Color(0xFFF7F6F4);
  static const Color muted = Color(0xFF6B7280);
  static const Color text = Color(0xFF0F172A);
  static const Color textSecondary = Color(0xFF374151);

  static const Color danger = Color(0xFFB91C1C);
  static const Color success = Color(0xFF047857);
}

class AppSpacing {
  AppSpacing._();

  static const double xs = 4.0;
  static const double s = 8.0;
  static const double sm = 10.0;
  static const double m = 12.0;
  static const double l = 16.0;
  static const double xl = 24.0;
  static const double xxl = 32.0;
}

class AppTextSizes {
  AppTextSizes._();

  static const double xs = 10.0;
  static const double s = 12.0;
  static const double body = 14.0;
  static const double md = 16.0;
  static const double lg = 18.0;
  static const double h3 = 20.0;
  static const double h2 = 22.0;
  static const double h1 = 28.0;
}

class AppRadii {
  AppRadii._();

  static const double small = 4.0;
  static const double normal = 8.0;
  static const double large = 16.0;
  static const double pill = 999.0;
}

class AppShadows {
  AppShadows._();

  static const List<BoxShadow> low = [
    BoxShadow(color: Color(0x1A000000), blurRadius: 6.0, offset: Offset(0, 2)),
  ];

  static const List<BoxShadow> medium = [
    BoxShadow(color: Color(0x23000000), blurRadius: 10.0, offset: Offset(0, 4)),
  ];
}
