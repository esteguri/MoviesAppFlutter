import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movies_app/common/rating.widget.dart';
import 'package:movies_app/models/movie.model.dart';
import 'package:movies_app/screens/movie-detail/movie-detail.screen.dart';

class CardMovie extends StatelessWidget {
  final Movie movie;

  const CardMovie({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    final width = Get.width * 0.35;

    return InkWell(
      onTap: () {
        FocusScope.of(context).unfocus();
        Get.to(() => MovieDetailScreen(movie: movie));
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 10, bottom: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Hero(
              tag: movie.id,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Container(
                  height: Get.height * 0.21,
                  width: width,
                  decoration: BoxDecoration(
                    color: Theme.of(context).canvasColor.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image(
                    fit: BoxFit.cover,
                    image: NetworkImage(movie.getPosterImg()),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: width,
              child: Text(
                movie.title ?? "",
                style: Theme.of(context).textTheme.bodyText1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Rating(rating: movie.getRating()),
          ],
        ),
      ),
    );
  }
}
