import 'package:flutter/material.dart';
import 'package:movies_app/services/movies.service.dart';

class MovieActors extends StatelessWidget {
  final int movieId;
  const MovieActors({super.key, required this.movieId});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: MoviesService().getActors(movieId.toString()),
        builder: (_, snap) {
          if (snap.hasData) {
            return Container(
              height: 160,
              margin: const EdgeInsets.only(top: 20),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: snap.data!.length,
                itemBuilder: (context, index) {
                  final actor = snap.data![index];

                  return Container(
                    width: 100,
                    margin: const EdgeInsets.only(right: 20),
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Image.network(
                            actor.getPhoto(),
                            height: 100,
                            width: 100,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          actor.getName(),
                          style: Theme.of(context).textTheme.bodyText1,
                          overflow: TextOverflow.clip,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  );
                },
              ),
            );
          } else {
            return Container();
          }
        });
  }
}
