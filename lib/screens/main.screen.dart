import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movies_app/controllers/theme.controller.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});

  final _mainController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Movie App"),
        actions: [
          IconButton(
            onPressed: _mainController.changeTheme,
            icon: Obx(
              () => Icon(_mainController.isDarkMode.value
                  ? Icons.light_mode
                  : Icons.dark_mode),
            ),
          )
        ],
      ),
      body: Center(
        child: Text(
            "Hello!!! FLutter is dark ${_mainController.isDarkMode.value}"),
      ),
    );
  }
}
