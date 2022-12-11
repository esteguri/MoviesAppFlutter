import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movies_app/theme/colors.theme.dart';

class MainHeader extends StatelessWidget {
  const MainHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Get.height * 0.2,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: Get.width * 0.1,
          vertical: 0,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Hello, what do you want to watch ?",
              style: Get.theme.textTheme.headline5!.copyWith(
                fontSize: 28,
                color: Get.isDarkMode ? ColorsApp.secondary : ColorsApp.white,
              ),
            ),
            TextField(
              cursorColor:
                  Get.isDarkMode ? ColorsApp.secondary : ColorsApp.white,
              style: TextStyle(
                color: Get.isDarkMode ? ColorsApp.secondary : ColorsApp.white,
              ),
              decoration: InputDecoration(
                isDense: true,
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                hintText: "Search",
                fillColor: ColorsApp.blueLight,
                focusColor: ColorsApp.blueLight,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide: BorderSide.none,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                prefixIcon: Icon(
                  Icons.search,
                  color: Get.isDarkMode ? ColorsApp.secondary : ColorsApp.white,
                  size: 20,
                ),
                prefixIconConstraints: const BoxConstraints(
                  minHeight: 30,
                  maxHeight: 50,
                  maxWidth: 50,
                  minWidth: 30,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
