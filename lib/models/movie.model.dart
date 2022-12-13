import 'dart:convert';

class Movie {
  Movie({
    required this.adult,
    this.backdropPath,
    required this.id,
    this.title,
    this.originalLanguage,
    this.originalTitle,
    this.overview,
    this.posterPath,
    this.mediaType,
    this.genreIds,
    this.popularity,
    required this.releaseDate,
    this.video,
    this.voteAverage,
    this.voteCount,
  });

  bool adult;
  String? backdropPath;
  int id;
  String? title;
  String? originalLanguage;
  String? originalTitle;
  String? overview;
  String? posterPath;
  String? mediaType;
  List<int>? genreIds;
  double? popularity;
  DateTime releaseDate;
  bool? video;
  double? voteAverage;
  int? voteCount;

  factory Movie.fromJson(String str) => Movie.fromMap(json.decode(str));

  factory Movie.fromMap(Map<String, dynamic> json) => Movie(
        adult: json["adult"],
        backdropPath: json["backdrop_path"],
        id: json["id"],
        title: json["title"],
        originalLanguage: json["original_language"],
        originalTitle: json["original_title"],
        overview: json["overview"],
        posterPath: json["poster_path"],
        mediaType: json["media_type"],
        genreIds: List<int>.from(json["genre_ids"].map((x) => x)),
        popularity: json["popularity"].toDouble(),
        releaseDate: DateTime.parse(json["release_date"]),
        video: json["video"],
        voteAverage: json["vote_average"].toDouble(),
        voteCount: json["vote_count"],
      );

  String getPosterImg() {
    if (posterPath == null) {
      return "https://ualr.edu/elearning/files/2020/10/No-Photo-Available.jpg";
    } else {
      return "https://image.tmdb.org/t/p/w500/$posterPath";
    }
  }

  double getRating() {
    if (voteAverage == null) return 0;
    return voteAverage! / 2;
  }

  String getReleaseDate() {
    return releaseDate.toString().split(" ")[0];
  }
}

class Movies {
  static List<Movie> fromList(List<dynamic> list) {
    return list.map((item) => Movie.fromMap(item)).toList();
  }
}
