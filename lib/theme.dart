import 'package:flutter/material.dart';

import 'constant.dart';

ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: Color(0xFFFBFBFB),
    fontFamily: "Muli",
    appBarTheme: appBarTheme(),
    textTheme: textTheme(),
    inputDecorationTheme: inputDecorationTheme(),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}

InputDecorationTheme inputDecorationTheme() {
  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(45),
    borderSide: BorderSide(color: textColor),
    gapPadding: 10,
  );

  return InputDecorationTheme(
    floatingLabelBehavior: FloatingLabelBehavior.always,
    contentPadding: EdgeInsets.symmetric(horizontal: 42, vertical: 20),
    enabledBorder: outlineInputBorder,
    focusedBorder: outlineInputBorder,
    border: outlineInputBorder,
  );
}

TextTheme textTheme() {
  return TextTheme(
    bodyText1: TextStyle(color: textColor),
    bodyText2: TextStyle(color: textPassiveColor),
  );
}

AppBarTheme appBarTheme() {
  return AppBarTheme(
    color: Color(0xFFFBFBFB),
    elevation: 0,
  );
}