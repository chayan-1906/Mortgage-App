import 'dart:convert';

import 'package:flutter/material.dart';
import 'ui/mortgage_app.dart';
import 'util/colors.dart';

final ThemeData _mortgageTheme = _buildMortgageTheme();

ThemeData _buildMortgageTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    accentColor: primaryIndigoDark,
    primaryColor: primaryIndigo200,
    scaffoldBackgroundColor: secondaryBackgroundWhite,
    cardColor: secondaryDeepPurple,
    hintColor: textOnPrimaryBlack,
    textTheme: _buildMortgageTextTheme(base.textTheme),
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderSide: BorderSide(color: primaryIndigoLight),
        borderRadius: BorderRadius.circular(12)
      ),
    ),
    floatingActionButtonTheme: base.floatingActionButtonTheme.copyWith(
      elevation: 7,
      splashColor: primaryIndigoLight,
      backgroundColor: secondaryDeepPurple
    )
  );
}

_buildMortgageTextTheme(TextTheme base) {
  return base.copyWith(
    body1: TextStyle(
      color: textOnPrimaryBlack,
      fontSize: 16
    ),
  ).apply(
    fontFamily: "Lato"
  );
}

void main() {
  runApp(MaterialApp(
    theme: _buildMortgageTheme(),
    home: MortgageApp(),
  ));
}
