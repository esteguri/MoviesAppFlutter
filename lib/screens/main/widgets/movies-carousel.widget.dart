import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movies_app/models/movie.model.dart';
import 'package:movies_app/screens/main/widgets/card-movie.widget.dart';

class MoviesCarousel extends StatelessWidget {
  final String title;
  final List<Movie> movies;

  const MoviesCarousel({super.key, required this.title, required this.movies});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(title, style: Theme.of(context).textTheme.subtitle2),
              TextButton(
                child: Text(
                  "See all",
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                onPressed: () {},
              )
            ],
          ),
        ),
        SizedBox(
          height: Get.height * 0.28,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: movies.length,
            itemBuilder: (context, index) {
              return CardMovie(movie: movies[index]);
            },
          ),
        ),
      ],
    );
  }
}
