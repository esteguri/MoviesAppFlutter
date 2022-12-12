import 'package:flutter/material.dart';
import 'package:movies_app/theme/colors.theme.dart';

class CustomThemeApp {
  static get ligth => ThemeData(
        primaryColor: ColorsApp.gray,
        fontFamily: "Poppins",
        backgroundColor: ColorsApp.white,
        canvasColor: ColorsApp.primary,
        appBarTheme: AppBarTheme(
          backgroundColor: ColorsApp.primary,
          elevation: 0,
        ),
        textTheme: TextTheme(
          subtitle1: TextStyle(
            color: ColorsApp.white,
          ),
          headline5: TextStyle(
            color: ColorsApp.white,
            fontSize: 28,
          ),
          bodyText1: TextStyle(
            color: ColorsApp.gray,
          ),
          subtitle2: TextStyle(
            color: ColorsApp.secondary,
            fontWeight: FontWeight.bold,
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
            borderSide: BorderSide.none,
          ),
          fillColor: ColorsApp.blueLight,
          focusColor: ColorsApp.blueLight,
          contentPadding:
              const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
          hintStyle: const TextStyle(
            color: Colors.white60,
          ),
        ),
      );

  static get dark => ThemeData(
        primaryColor: ColorsApp.gray,
        backgroundColor: ColorsApp.secondary,
        fontFamily: "Poppins",
        brightness: Brightness.dark,
        canvasColor: ColorsApp.primary,
        appBarTheme: AppBarTheme(
          backgroundColor: ColorsApp.primary,
          foregroundColor: ColorsApp.white,
          elevation: 0,
          actionsIconTheme: IconThemeData(
            color: ColorsApp.secondary,
          ),
        ),
        textTheme: TextTheme(
          subtitle1: TextStyle(
            color: ColorsApp.secondary,
          ),
          headline5: TextStyle(
            color: ColorsApp.secondary,
            fontSize: 28,
          ),
          subtitle2: TextStyle(
            color: ColorsApp.white,
            fontWeight: FontWeight.bold,
          ),
          bodyText1: const TextStyle(
            color: Colors.white70,
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
            borderSide: BorderSide.none,
          ),
          fillColor: ColorsApp.blueLight,
          focusColor: ColorsApp.blueLight,
          contentPadding:
              const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
          hintStyle: TextStyle(
            color: ColorsApp.gray,
          ),
        ),
      );
}
