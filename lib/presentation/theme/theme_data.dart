import 'package:flutter/material.dart';
import 'package:tortoise_ui/presentation/theme/base_colors.dart';

/// Light theme
final appThemeData = ThemeData(
  brightness: Brightness.light,
  scaffoldBackgroundColor: BaseColors.white,
  primaryColor: BaseColors.primaryColor,
  appBarTheme: const AppBarTheme(
    iconTheme: IconThemeData(color: BaseColors.black),
    foregroundColor: BaseColors.transparent,
    backgroundColor: BaseColors.transparent,
    surfaceTintColor: BaseColors.transparent,
    elevation: 0.0,
    centerTitle: false,
  ),
  elevatedButtonTheme: _elevatedButtonTheme(),
  outlinedButtonTheme: _outlinedButtonTheme(),
  textSelectionTheme: _textSelectionThemeData(),
  tabBarTheme: const TabBarThemeData(
    indicatorColor: BaseColors.primaryColor,
    labelColor: BaseColors.primaryColor,
    indicatorSize: TabBarIndicatorSize.tab,
  ),
  progressIndicatorTheme: const ProgressIndicatorThemeData(
    color: BaseColors.primaryColor,
  ),
);

/// Dark theme
final appDarkThemeData = ThemeData(
  brightness: Brightness.dark,
  scaffoldBackgroundColor: const Color(0xFF0B0F10),
  primaryColor: BaseColors.primaryGreen,
  appBarTheme: const AppBarTheme(
    iconTheme: IconThemeData(color: BaseColors.white),
    foregroundColor: BaseColors.transparent,
    backgroundColor: BaseColors.transparent,
    surfaceTintColor: BaseColors.transparent,
    elevation: 0.0,
    centerTitle: false,
  ),
  elevatedButtonTheme: _elevatedButtonTheme(dark: true),
  outlinedButtonTheme: _outlinedButtonTheme(dark: true),
  textSelectionTheme: _textSelectionThemeData(dark: true),
  tabBarTheme: const TabBarThemeData(
    indicatorColor: BaseColors.brightGreen,
    labelColor: BaseColors.brightGreen,
    indicatorSize: TabBarIndicatorSize.tab,
  ),
  progressIndicatorTheme: const ProgressIndicatorThemeData(
    color: BaseColors.brightGreen,
  ),
  colorScheme: const ColorScheme.dark(
    primary: BaseColors.primaryGreen,
    secondary: BaseColors.brightGreen,
    surface: Color(0xFF111417),
    // background intentionally omitted (use scaffoldBackgroundColor / surface)
  ),
);

ElevatedButtonThemeData _elevatedButtonTheme({bool dark = false}) {
  return ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      padding: const EdgeInsets.symmetric(vertical: 16),
      backgroundColor: dark ? BaseColors.primaryGreen : BaseColors.primaryBlack,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
    ),
  );
}

OutlinedButtonThemeData _outlinedButtonTheme({bool dark = false}) {
  return OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: dark ? BaseColors.brightGreen : BaseColors.primaryColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    ),
  );
}

TextSelectionThemeData _textSelectionThemeData({bool dark = false}) {
  return TextSelectionThemeData(
    cursorColor: dark ? BaseColors.brightGreen : BaseColors.primaryColor,
    selectionHandleColor: dark
        ? BaseColors.brightGreen
        : BaseColors.primaryColor,
  );
}
