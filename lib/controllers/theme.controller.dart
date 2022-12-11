import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThemeController extends GetxController {
  var isDarkMode = Get.isDarkMode.obs;

  void changeTheme() {
    Get.changeThemeMode(isDarkMode.value ? ThemeMode.light : ThemeMode.dark);
    isDarkMode.value = !isDarkMode.value;
    print(" Internal: ${isDarkMode.value} Get: ${Get.isDarkMode}");
  }
}
