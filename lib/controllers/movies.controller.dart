import 'package:get/get.dart';
import 'package:movies_app/models/movie.model.dart';
import 'package:movies_app/services/movies.service.dart';

class MoviesController extends GetxController {
  var popularMovies = <Movie>[].obs;
  var topRatedMovies = <Movie>[].obs;

  final _moviesService = MoviesService();

  void getPopulars() async {
    if (popularMovies.isNotEmpty) return;
    final movies = await _moviesService.getPopulars();
    popularMovies.value = movies;
  }

  void getTopRated() async {
    if (topRatedMovies.isNotEmpty) return;
    final movies = await _moviesService.getTopRated();
    topRatedMovies.value = movies;
  }

  void getMovies() {
    getPopulars();
    getTopRated();
  }

  Future<void> refreshData() async {
    popularMovies.clear();
    topRatedMovies.clear();
    getMovies();
    Future.delayed(const Duration(milliseconds: 500));
  }
}
