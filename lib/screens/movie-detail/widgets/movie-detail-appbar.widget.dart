import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MovieDetailAppbar extends StatelessWidget {
  final String posterImg;
  final int movieId;

  const MovieDetailAppbar(
      {super.key, required this.posterImg, required this.movieId});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      elevation: 2.0,
      expandedHeight: Get.height * 0.3,
      floating: false,
      pinned: true,
      actions: [
        IconButton(
          icon: const Icon(Icons.favorite_border, color: Colors.white),
          onPressed: () {},
        ),
      ],
      flexibleSpace: FlexibleSpaceBar(
        background: Hero(
          tag: movieId,
          child: Image(
            fit: BoxFit.cover,
            image: NetworkImage(posterImg),
          ),
        ),
      ),
    );
  }
}
