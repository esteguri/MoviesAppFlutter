import 'package:movies_app/models/actor.model.dart';
import 'package:movies_app/models/movie.model.dart';
import 'package:movies_app/services/http.service.dart';

class MoviesService {
  Future<List<Movie>> getPopulars() async {
    final response = await HttpService.get('/3/movie/popular');
    return Movies.fromList(response["results"]);
  }

  Future<List<Movie>> getTopRated() async {
    final response = await HttpService.get('/3/movie/top_rated');
    return Movies.fromList(response["results"]);
  }

  Future<List<Actor>> getActors(String movieId) async {
    final response = await HttpService.get('/3/movie/$movieId/credits');
    return Actors.fromList(response["cast"]);
  }
}
