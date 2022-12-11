import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movies_app/screens/main/main.screen.dart';
import 'package:movies_app/theme/custom.theme.dart';

void main() {
  runApp(const MovieApp());
}

class MovieApp extends StatelessWidget {
  const MovieApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Movie App",
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
      theme: CustomThemeApp.ligth,
      darkTheme: CustomThemeApp.dark,
      themeMode: ThemeMode.system,
    );
  }
}
