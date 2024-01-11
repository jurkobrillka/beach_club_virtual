//tu budu temy, farby

import 'package:flutter/material.dart';

import 'colors.dart';

ThemeData lightTheme = ThemeData(
  fontFamily: "Roboto",
  useMaterial3: true,
  textTheme: textTheme,
  //HOW TO SETP THEME POZRIET!~!!!!~!~!~!~!~!
);

TextTheme textTheme = TextTheme(
  //displayMedium: TextStyle(
    //  fontFamily: "Roboto", fontSize: 28, fontWeight: FontWeight.bold),

  displayLarge: TextStyle(
    fontFamily: 'Roboto',
    fontSize: 57.0,
    fontWeight: FontWeight.w400,
    letterSpacing: -0.25,
    color: AppColors.onSurface,
    height: 1.14,
  ),

  // Display Medium
  displayMedium: TextStyle(
    fontFamily: 'Roboto',
    fontSize: 45.0,
    fontWeight: FontWeight.w400,
    letterSpacing: 0,
    color: AppColors.onSurface,
    height: 1.33,
  ),

  // Display Small
  displaySmall: TextStyle(
    fontFamily: 'Roboto',
    fontSize: 36.0,
    fontWeight: FontWeight.w400,
    letterSpacing: 0,
    color: AppColors.onSurface,
    height: 1.33,
  ),

  // Headline Large
  headlineLarge: TextStyle(
    fontFamily: 'Roboto',
    fontSize: 32.0,
    fontWeight: FontWeight.w400,
    letterSpacing: 0,
    color: AppColors.onSurface,
    height: 1.33,
  ),

  // Headline Medium
  headlineMedium: TextStyle(
    fontFamily: 'Roboto',
    fontSize: 28.0,
    fontWeight: FontWeight.w400,
    letterSpacing: 0,
    color: AppColors.onSurface,
    height: 1.25,
  ),

  // Headline Small
  headlineSmall: TextStyle(
    fontFamily: 'Roboto',
    fontSize: 24.0,
    fontWeight: FontWeight.w400,
    letterSpacing: 0,
    color: AppColors.onSurface,
    height: 1.17,
  ),

  // Title Large
  titleLarge: TextStyle(
    fontFamily: 'Roboto',
    fontSize: 22.0,
    fontWeight: FontWeight.w400,
    letterSpacing: 0,
    color: AppColors.onSurface,
    height: 1.17,
  ),

  // Title Medium
  titleMedium: TextStyle(
    fontFamily: 'Roboto',
    fontSize: 16.0,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.15,
    color: AppColors.onSurface,
    height: 1.33,
  ),

  // Title Small
  titleSmall: TextStyle(
    fontFamily: 'Roboto',
    fontSize: 14.0,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.1,
    color: AppColors.onSurface,
    height: 1.2,
  ),

  // Label Large
  labelLarge: TextStyle(
    fontFamily: 'Roboto',
    fontSize: 14.0,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.1,
    color: AppColors.onSurface,
    height: 1.0,
  ),

  // Label Medium
  labelMedium: TextStyle(
    fontFamily: 'Roboto',
    fontSize: 12.0,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.5,
    color: AppColors.onSurface,
    height: 1.33,
  ),

  // Label Small
  labelSmall: TextStyle(
    fontFamily: 'Roboto',
    fontSize: 11.0,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.5,
    color: AppColors.onSurface,
    height: 1.33,
  ),

  // Body Large
  bodyLarge: TextStyle(
    fontFamily: 'Roboto',
    fontSize: 16.0,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.5,
    color: AppColors.onSurface,
    height: 1.5,
  ),

  // Body Medium
  bodyMedium: TextStyle(
    fontFamily: 'Roboto',
    fontSize: 14.0,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.25,
    color: AppColors.onSurface,
    height: 1.33,
  ),

  // Body Small
  bodySmall: TextStyle(
    fontFamily: 'Roboto',
    fontSize: 12.0,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.4,
    color: AppColors.onSurface,
    height: 1.33,
  ),
);
