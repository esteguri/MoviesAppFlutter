import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:movies_app/theme/colors.theme.dart';

class Rating extends StatelessWidget {
  final double rating;

  const Rating({super.key, required this.rating});

  @override
  Widget build(BuildContext context) {
    return RatingBar.builder(
      initialRating: rating,
      minRating: 1,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: 5,
      itemSize: 18,
      itemPadding: const EdgeInsets.only(right: 4),
      unratedColor: ColorsApp.yellow,
      itemBuilder: (context, _) => const Icon(
        Icons.star,
        color: Colors.amber,
      ),
      onRatingUpdate: (_) {},
      ignoreGestures: true,
    );
  }
}
