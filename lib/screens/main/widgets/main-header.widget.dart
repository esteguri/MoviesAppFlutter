import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movies_app/theme/colors.theme.dart';

class MainHeader extends StatelessWidget {
  const MainHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * 0.2,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: size.width * 0.1,
          vertical: 0,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Hello, what do you want to watch ?",
              style: Theme.of(context).textTheme.headline5,
            ),
            TextField(
              cursorColor:
                  Get.isDarkMode ? ColorsApp.secondary : ColorsApp.white,
              decoration: InputDecoration(
                isDense: true,
                hintText: "Search",
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
