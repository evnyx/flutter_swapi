import 'dart:convert';
import 'package:http/http.dart' as http;

class Species {
  String name;
  String classification;
  String designation;
  String averageHeight;
  String skinColors;
  String hairColors;
  String eyeColors;
  String averageLifespan;
  String language;

  Species(
      {this.name="",
        this.classification="",
        this.designation="",
        this.averageHeight="",
        this.skinColors="",
        this.hairColors="",
        this.eyeColors="",
        this.averageLifespan="",
        this.language="",});

  factory Species.fromJson(Map<String, dynamic> json) {
    return Species(
        name : json['name'],
        classification : json['classification'],
        designation : json['designation'],
        averageHeight : json['average_height'],
        skinColors : json['skin_colors'],
        hairColors : json['hair_colors'],
        eyeColors : json['eye_colors'],
        averageLifespan : json['average_lifespan'],
        language : json['language'],
    );
  }

  static Future<Species> connectToApi(String id) async
  {
    String apiURL = "https://swapi.dev/api/species/"+id;

    var apiResult = await http.get(Uri.parse(apiURL)
    );
    var jsonObject = json.decode(apiResult.body);

    return Species.fromJson(jsonObject);
  }
}