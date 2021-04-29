// To parse this JSON data, do
//
//     final poi = poiFromJson(jsonString);

import 'dart:convert';

class Poi {
  Poi({
    this.id,
    this.name,
    this.image,
  });

  int id;
  String name;
  String image;

  factory Poi.fromRawJson(String str) => Poi.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Poi.fromJson(Map<String, dynamic> json) => Poi(
        id: json["id"],
        name: json["name"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "image": image,
      };
}


//   Map<String, dynamic> toJson() => {
//         "id": id,
//         "name": name,
//         "images": List<dynamic>.from(images.map((x) => x)),
//       };
// }