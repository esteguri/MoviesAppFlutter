import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';
import 'package:movies_app/screens/main/main.screen.dart';
import 'package:movies_app/theme/custom.theme.dart';

void main() async {
  await dotenv.load();
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
      builder: BotToastInit(),
      themeMode: ThemeMode.system,
      navigatorObservers: [BotToastNavigatorObserver()],
    );
  }
}
