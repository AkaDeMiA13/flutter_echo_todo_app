// import "package:intl/intl.dart";

class Todo {
  String id;
  String title;
  String memo;
  String imageUrl;
  String genre;
  bool done;
  DateTime start;
  DateTime end;
  String personID;

  Todo({
    this.id,
    this.title,
    this.memo,
    this.imageUrl,
    this.genre,
    this.done = false,
    this.start,
    this.end,
    this.personID,
  });

  Todo.fromMap(Map<String, dynamic> map)
      : this(
            id: map["id"],
            title: map["title"],
            memo: map["memo"],
            imageUrl: map["imageurl"],
            genre: map["genre"],
            done: map["done"],
            start: DateTime.parse(map["start"]),
            end: DateTime.parse(map["end"]),
            personID: map["person"]);

  Map<String, dynamic> toMap() {
    return {
      "id": this.id,
      "title": this.title,
      "memo": this.memo,
      "imageurl": this.imageUrl,
      "genre": this.genre,
      "done": this.done,
      "start": this.start.toIso8601String(),
      "end": this.end.toIso8601String(),
      "person": this.personID,
    };
  }
}