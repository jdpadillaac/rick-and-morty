import 'package:rick_and_morty/domain/entities/character.dart';

class ApiResult {
  ApiResult({
    this.info,
    this.results,
  });

  Info info;
  List<Character> results;

  factory ApiResult.fromJson(Map<String, dynamic> json) => ApiResult(
        info: Info.fromJson(json["info"]),
        results: List<Character>.from(
            json["results"].map((x) => Character.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "info": info.toJson(),
        "results": List<dynamic>.from(results.map((x) => x.toJson())),
      };
}

class Info {
  Info({
    this.count,
    this.pages,
    this.next,
    this.prev,
  });

  int count;
  int pages;
  String next;
  dynamic prev;

  factory Info.fromJson(Map<String, dynamic> json) => Info(
        count: json["count"],
        pages: json["pages"],
        next: json["next"],
        prev: json["prev"],
      );

  Map<String, dynamic> toJson() => {
        "count": count,
        "pages": pages,
        "next": next,
        "prev": prev,
      };
}
