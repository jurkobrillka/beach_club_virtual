//tu budu temy, farby

import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
    fontFamily: "Roboto",
  useMaterial3: true,
  textTheme: textTheme,
  //HOW TO SETP THEME POZRIET!~!!!!~!~!~!~!~!
);

TextTheme textTheme = TextTheme(
  displayMedium: TextStyle(fontFamily: "Roboto", fontSize: 28, fontWeight: FontWeight.bold),
  labelMedium: TextStyle(fontFamily: "Roboto", fontSize: 15, fontStyle: FontStyle.italic, color: Colors.grey)
);