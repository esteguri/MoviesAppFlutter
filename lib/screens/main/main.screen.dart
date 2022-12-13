import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movies_app/common/appbar-general.widget.dart';
import 'package:movies_app/screens/main/widgets/main-header.widget.dart';
import 'package:movies_app/screens/main/widgets/movies-carousel.widget.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarGeneral(),
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(maxHeight: Get.height - Get.height * 0.1),
          child: Column(
            children: [
              const MainHeader(),
              Expanded(
                child: Container(
                  height: double.maxFinite,
                  padding: const EdgeInsets.only(
                    top: 20,
                    left: 20,
                  ),
                  decoration: BoxDecoration(
                    color: Theme.of(context).backgroundColor,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25),
                    ),
                  ),
                  child: Center(
                    child: Column(
                      children: const [
                        MoviesCarousel(title: "RECOMMENDED FOR YOU"),
                        MoviesCarousel(title: "TOP RATED"),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
