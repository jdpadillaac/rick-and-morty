class Character {
  Character({
    this.id,
    this.name,
    this.status,
    this.species,
    this.type,
    this.gender,
    this.origin,
    this.location,
    this.image,
    this.episode,
    this.url,
    this.created,
  });

  int id;
  String name;
  Status status;
  Species species;
  String type;
  Gender gender;
  Location origin;
  Location location;
  String image;
  List<String> episode;
  String url;
  DateTime created;

  factory Character.fromJson(Map<String, dynamic> json) => Character(
        id: json["id"],
        name: json["name"],
        status: statusValues.map[json["status"]],
        species: speciesValues.map[json["species"]],
        type: json["type"],
        gender: genderValues.map[json["gender"]],
        origin: Location.fromJson(json["origin"]),
        location: Location.fromJson(json["location"]),
        image: json["image"],
        episode: List<String>.from(json["episode"].map((x) => x)),
        url: json["url"],
        created: DateTime.parse(json["created"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "status": statusValues.reverse[status],
        "species": speciesValues.reverse[species],
        "type": type,
        "gender": genderValues.reverse[gender],
        "origin": origin.toJson(),
        "location": location.toJson(),
        "image": image,
        "episode": List<dynamic>.from(episode.map((x) => x)),
        "url": url,
        "created": created.toIso8601String(),
      };
}

enum Gender { MALE, FEMALE, UNKNOWN }

final genderValues = EnumValues(
    {"Female": Gender.FEMALE, "Male": Gender.MALE, "unknown": Gender.UNKNOWN});

class Location {
  Location({
    this.name,
    this.url,
  });

  String name;
  String url;

  factory Location.fromJson(Map<String, dynamic> json) => Location(
        name: json["name"],
        url: json["url"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "url": url,
      };
}

enum Species { HUMAN, ALIEN }

final speciesValues =
    EnumValues({"Alien": Species.ALIEN, "Human": Species.HUMAN});

enum Status { ALIVE, UNKNOWN, DEAD }

final statusValues = EnumValues(
    {"Alive": Status.ALIVE, "Dead": Status.DEAD, "unknown": Status.UNKNOWN});

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
