import 'dart:convert';

class Actor {
  Actor({
    this.adult,
    this.gender,
    this.id,
    this.knownForDepartment,
    required this.name,
    this.originalName,
    this.popularity,
    this.profilePath,
    this.castId,
    this.character,
    this.creditId,
    this.order,
  });

  bool? adult;
  int? gender;
  int? id;
  String? knownForDepartment;
  String name;
  String? originalName;
  double? popularity;
  String? profilePath;
  int? castId;
  String? character;
  String? creditId;
  int? order;

  factory Actor.fromJson(String str) => Actor.fromMap(json.decode(str));

  factory Actor.fromMap(Map<String, dynamic> json) => Actor(
        adult: json["adult"],
        gender: json["gender"],
        id: json["id"],
        knownForDepartment: json["known_for_department"],
        name: json["name"],
        originalName: json["original_name"],
        popularity: json["popularity"].toDouble(),
        profilePath: json["profile_path"],
        castId: json["cast_id"],
        character: json["character"],
        creditId: json["credit_id"],
        order: json["order"],
      );

  String getPhoto() {
    if (profilePath == null) {
      return "https://www.marismith.com/wp-content/uploads/2014/07/facebook-profile-blank-face.jpeg";
    } else {
      return "https://image.tmdb.org/t/p/w500/$profilePath";
    }
  }

  String getName() {
    return name.length > 20
        ? name = "${name.substring(0, 20)}..."
        : name = name;
  }
}

class Actors {
  static List<Actor> fromList(List<dynamic> list) {
    return list.map((item) => Actor.fromMap(item)).toList();
  }
}
