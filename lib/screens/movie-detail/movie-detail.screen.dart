import 'package:flutter/material.dart';
import 'package:movies_app/common/rating.widget.dart';
import 'package:movies_app/screens/movie-detail/widgets/movie-actors.widget.dart';
import 'package:movies_app/screens/movie-detail/widgets/movie-detail-appbar.widget.dart';
import 'package:movies_app/theme/colors.theme.dart';

class MovieDetailScreen extends StatelessWidget {
  const MovieDetailScreen({super.key});

  // TODO: Temporal
  final String description =
      "This is a website i have created where i share all my XD designs for free 🥳 If you like don't forget to press the fantastic letter L on your keyboard 🤓. And if you want to receive my last shots follow me.";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: CustomScrollView(
        slivers: [
          const MovieDetailAppbar(),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text("Avatar", style: Theme.of(context).textTheme.headline4),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                  decoration: BoxDecoration(
                    color: ColorsApp.primary,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: const Text(
                    "4K",
                    style: TextStyle(color: Colors.white, fontSize: 10),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: null,
                  style: ElevatedButton.styleFrom(
                    shape: const StadiumBorder(),
                    backgroundColor: ColorsApp.gray,
                    elevation: 5,
                  ),
                  child: const Text("WATCH NOW"),
                ),
                const Rating(rating: 3)
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 20),
              child: Text(
                description,
                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      height: 2,
                    ),
              ),
            ),
            const SizedBox(height: 10),
            const MovieActors(),
            const SizedBox(height: 10),
            Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        "Studio",
                        style: Theme.of(context).textTheme.subtitle2,
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Text(
                        "Warner Bros",
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        "Genre",
                        style: Theme.of(context).textTheme.subtitle2,
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Text(
                        "Action, Adventure, Fantasy",
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        "Release",
                        style: Theme.of(context).textTheme.subtitle2,
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Text(
                        "2018",
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
