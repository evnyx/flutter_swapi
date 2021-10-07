import 'dart:convert';
import 'package:http/http.dart' as http;

class Peoples {
  String? name;
  String? height;
  String? mass;
  String? hairColor;
  String? skinColor;
  String? eyeColor;
  String? birthYear;
  String? gender;
  String? homeworld;
  List<String>? films;
  List<Null>? species;
  List<String>? vehicles;
  List<String>? starships;
  String? created;
  String? edited;
  String? url;

  Peoples(
      {this.name,
        this.height,
        this.mass,
        this.hairColor,
        this.skinColor,
        this.eyeColor,
        this.birthYear,
        this.gender,
        this.homeworld,
        this.films,
        this.species,
        this.vehicles,
        this.starships,
        this.created,
        this.edited,
        this.url});

  Peoples.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    height = json['height'];
    mass = json['mass'];
    hairColor = json['hair_color'];
    skinColor = json['skin_color'];
    eyeColor = json['eye_color'];
    birthYear = json['birth_year'];
    gender = json['gender'];
    homeworld = json['homeworld'];
    films = json['films'].cast<String>();
    vehicles = json['vehicles'].cast<String>();
    starships = json['starships'].cast<String>();
    created = json['created'];
    edited = json['edited'];
    url = json['url'];
  }

  static Future<Peoples> connectToApi(String id) async
  {
    String apiURL = "https://swapi.dev/api/people/"+id;

    var apiResult = await http.get(Uri.parse(apiURL)
    );
    var jsonObject = json.decode(apiResult.body);

    return Peoples.fromJson(jsonObject);
  }
}