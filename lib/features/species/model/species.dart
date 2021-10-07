import 'dart:convert';
import 'package:http/http.dart' as http;

class Species {
  String? name;
  String? classification;
  String? designation;
  String? averageHeight;
  String? skinColors;
  String? hairColors;
  String? eyeColors;
  String? averageLifespan;
  String? homeworld;
  String? language;
  List<String>? people;
  List<String>? films;
  String? created;
  String? edited;
  String? url;

  Species(
      {this.name,
        this.classification,
        this.designation,
        this.averageHeight,
        this.skinColors,
        this.hairColors,
        this.eyeColors,
        this.averageLifespan,
        this.homeworld,
        this.language,
        this.people,
        this.films,
        this.created,
        this.edited,
        this.url});

  Species.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    classification = json['classification'];
    designation = json['designation'];
    averageHeight = json['average_height'];
    skinColors = json['skin_colors'];
    hairColors = json['hair_colors'];
    eyeColors = json['eye_colors'];
    averageLifespan = json['average_lifespan'];
    homeworld = json['homeworld'];
    language = json['language'];
    people = json['people'].cast<String>();
    films = json['films'].cast<String>();
    created = json['created'];
    edited = json['edited'];
    url = json['url'];
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