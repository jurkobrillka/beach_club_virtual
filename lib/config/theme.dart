//tu budu temy, farby

import 'package:beach_club_virtual/config/colors.dart';
import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  fontFamily: "Roboto",
  useMaterial3: true,
  textTheme: textTheme,
  colorScheme: const ColorScheme(
      brightness: Brightness.light,
      primary: AppColors.primaryContainer,
      onPrimary: AppColors.onPrimaryContainer,
      secondary: AppColors.secondary,
      onSecondary: AppColors.onSecondary,
      error: AppColors.error,
      onError: AppColors.onError,
      background: AppColors.backgroundWhite,
      onBackground: AppColors.onBackground,
      surface: AppColors.surface,
      onSurface: AppColors.onSurface,
  ),

);

TextTheme textTheme = TextTheme(
    titleLarge: TextStyle(
        fontFamily: "Roboto", fontSize: 35, fontWeight: FontWeight.bold, color: AppColors.primaryTitle),
    titleMedium: TextStyle(
        fontFamily: "Roboto",
        fontSize: 22,
        fontStyle: FontStyle.italic,
        color: AppColors.secondaryTitle),
    bodyLarge: TextStyle(
        fontFamily: "Roboto",
        fontSize: 18,
        color: AppColors.primaryTitle,
        fontWeight: FontWeight.bold
    ),
    bodyMedium: TextStyle(
        fontFamily: "Roboto",
        fontSize: 15,
        color: AppColors.secondaryTitle),

);
