import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spk_dt_client/core.dart';

ThemeData customeTheme() {
  return ThemeData().copyWith(
    primaryColor: primaryColor,
    scaffoldBackgroundColor: scaffoldBackgroundColor,
    colorScheme: ColorScheme.fromSeed(seedColor: primaryColor),
    appBarTheme: AppBarTheme(
      centerTitle: true,
      titleTextStyle: GoogleFonts.inter(
        fontSize: 14,
        color: primaryTextColor,
        fontWeight: FontWeight.bold,
      ),
      color: scaffoldBackgroundColor,
      iconTheme: IconThemeData(
        color: primaryColor,
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: scaffoldBackgroundColor,
      elevation: 0.3,
      selectedItemColor: primaryColor,
      unselectedItemColor: secondaryTextColor,
      selectedLabelStyle: GoogleFonts.inter(
        fontSize: 10,
      ),
      unselectedLabelStyle: GoogleFonts.inter(
        fontSize: 10,
      ),
    ),
    iconTheme: IconThemeData(
      color: primaryColor,
    ),
    inputDecorationTheme: InputDecorationTheme(
      hintStyle: GoogleFonts.inter(
        fontSize: 14,
        color: secondaryTextColor,
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: secondaryTextColor.withOpacity(0.7),
          width: 1.2,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: primaryColor,
          width: 1.2,
        ),
      ),
      errorBorder: const OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.red,
          width: 1.2,
        ),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: primaryColor,
          width: 1.2,
        ),
      ),
    ),
  );
}
