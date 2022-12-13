import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:movies_app/common/rating.widget.dart';
import 'package:movies_app/screens/movie-detail/movie-detail.screen.dart';
import 'package:movies_app/theme/colors.theme.dart';

class CardMovie extends StatelessWidget {
  const CardMovie({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        FocusScope.of(context).unfocus();
        Get.to(() => MovieDetailScreen());
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 10, bottom: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Container(
                height: Get.height * 0.21,
                width: Get.width * 0.35,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Image(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    "https://pics.filmaffinity.com/Avatar_El_sentido_del_agua-593536896-large.jpg",
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Text(
              "Avatar: Endgame",
              style: Theme.of(context).textTheme.bodyText1,
              overflow: TextOverflow.ellipsis,
            ),
            const Rating(rating: 3),
          ],
        ),
      ),
    );
  }
}
