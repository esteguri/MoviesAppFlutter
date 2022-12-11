import 'package:flutter/material.dart';
import 'package:movies_app/theme/colors.theme.dart';

class CustomThemeApp {
  static get ligth => ThemeData(
        primaryColor: ColorsApp.gray,
        fontFamily: "Poppins",
        appBarTheme: AppBarTheme(
          backgroundColor: ColorsApp.primary,
          elevation: 0,
        ),
        canvasColor: ColorsApp.white,
      );

  static get dark => ThemeData(
        primaryColor: ColorsApp.gray,
        backgroundColor: ColorsApp.secondary,
        fontFamily: "Poppins",
        brightness: Brightness.dark,
        appBarTheme: AppBarTheme(
          backgroundColor: ColorsApp.primary,
          foregroundColor: ColorsApp.white,
          elevation: 0,
        ),
        canvasColor: ColorsApp.secondary,
      );
}
