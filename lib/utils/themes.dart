import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:happy_new_year/utils/colors.dart';

class AppTheme {
  AppTheme._();

  static final ThemeData themeData = ThemeData(
    textTheme: GoogleFonts.robotoTextTheme(),
    brightness: Brightness.light,
    primaryColor: AppColors.primary,
    accentColor: AppColors.secondary,
    scaffoldBackgroundColor: AppColors.background,
    iconTheme: const IconThemeData(
      color: AppColors.secondary,
    ),
  );
}
