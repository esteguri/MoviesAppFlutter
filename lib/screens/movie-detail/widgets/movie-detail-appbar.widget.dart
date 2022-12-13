import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MovieDetailAppbar extends StatelessWidget {
  const MovieDetailAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      elevation: 2.0,
      expandedHeight: Get.height * 0.3,
      floating: false,
      pinned: true,
      actions: [
        IconButton(
          icon: const Icon(Icons.favorite_border),
          onPressed: () {},
        ),
      ],
      flexibleSpace: const FlexibleSpaceBar(
        background: Image(
          fit: BoxFit.cover,
          image: NetworkImage(
            "https://pics.filmaffinity.com/Avatar_El_sentido_del_agua-593536896-large.jpg",
          ),
        ),
      ),
    );
  }
}
