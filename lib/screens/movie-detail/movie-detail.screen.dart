import 'package:flutter/material.dart';
import 'package:movies_app/common/key-value.widget.dart';
import 'package:movies_app/common/rating.widget.dart';
import 'package:movies_app/models/movie.model.dart';
import 'package:movies_app/screens/movie-detail/widgets/movie-actors.widget.dart';
import 'package:movies_app/screens/movie-detail/widgets/movie-detail-appbar.widget.dart';
import 'package:movies_app/screens/movie-detail/widgets/movie-title.widget.dart';
import 'package:movies_app/theme/colors.theme.dart';

class MovieDetailScreen extends StatelessWidget {
  final Movie movie;

  const MovieDetailScreen({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: CustomScrollView(
        slivers: [
          MovieDetailAppbar(
            movieId: movie.id,
            posterImg: movie.getPosterImg(),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              const SizedBox(height: 10.0),
              _buildBody(context),
            ]),
          )
        ],
      ),
    );
  }

  Widget _buildBody(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            MovieTitle(title: movie.title ?? ""),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _whatchNowButton(),
                Rating(rating: movie.getRating()),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 20),
              child: Text(
                movie.overview ?? "",
                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      height: 2,
                    ),
              ),
            ),
            const SizedBox(height: 10),
            MovieActors(movieId: movie.id),
            const SizedBox(height: 10),
            Column(
              children: [
                KeyValue(
                  keyText: "Date",
                  value: movie.getReleaseDate(),
                ),
                const SizedBox(height: 5),
                KeyValue(
                  keyText: "Language",
                  value: "${movie.originalLanguage?.toUpperCase()}",
                ),
                const SizedBox(height: 5),
                KeyValue(
                  keyText: "Adult content",
                  value: movie.adult ? "Yes" : "No",
                ),
                const SizedBox(height: 5)
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _whatchNowButton() {
    return ElevatedButton(
      onPressed: null,
      style: ElevatedButton.styleFrom(
        shape: const StadiumBorder(),
        backgroundColor: ColorsApp.gray,
        elevation: 5,
      ),
      child: const Text("WATCH NOW"),
    );
  }
}
