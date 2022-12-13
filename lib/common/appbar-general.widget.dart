import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movies_app/controllers/theme.controller.dart';

class AppbarGeneral extends StatelessWidget implements PreferredSizeWidget {
  AppbarGeneral({Key? key})
      : preferredSize = const Size.fromHeight(kToolbarHeight),
        super(key: key);

  @override
  final Size preferredSize;

  final _themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return AppBar(
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
    );
  }
}
