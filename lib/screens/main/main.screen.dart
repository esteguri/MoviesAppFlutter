import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movies_app/controllers/theme.controller.dart';
import 'package:movies_app/screens/main/widgets/main-header.widget.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});

  final _themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Movie App",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            onPressed: _themeController.changeTheme,
            icon: Obx(
              () => Icon(
                _themeController.isDarkMode.value
                    ? Icons.light_mode
                    : Icons.dark_mode,
              ),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          const MainHeader(),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Get.theme.backgroundColor,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
              ),
              child: Center(
                child: Text(
                    "Hello!!! FLutter is dark ${_themeController.isDarkMode.value}"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
