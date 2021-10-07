import 'dart:convert';
import 'package:http/http.dart' as http;

class Films
{
  String? title;
  int? episodeId;
  String? openingCrawl;
  String? director;
  String? producer;
  String? releaseDate;
  List<String>? characters;
  List<String>? planets;
  List<String>? starships;
  List<String>? vehicles;
  List<String>? species;
  String? created;
  String? edited;
  String? url;

  Films(
      {this.title,
        this.episodeId,
        this.openingCrawl,
        this.director,
        this.producer,
        this.releaseDate,
        this.characters,
        this.planets,
        this.starships,
        this.vehicles,
        this.species,
        this.created,
        this.edited,
        this.url});

  Films.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    episodeId = json['episode_id'];
    openingCrawl = json['opening_crawl'];
    director = json['director'];
    producer = json['producer'];
    releaseDate = json['release_date'];
    characters = json['characters'].cast<String>();
    planets = json['planets'].cast<String>();
    starships = json['starships'].cast<String>();
    vehicles = json['vehicles'].cast<String>();
    species = json['species'].cast<String>();
    created = json['created'];
    edited = json['edited'];
    url = json['url'];
  }

  static Future<Films> connectToApi(String id) async
  {
    String apiURL = "https://swapi.dev/api/films/"+id;

    var apiResult = await http.get(Uri.parse(apiURL)
    );
    var jsonObject = json.decode(apiResult.body);

    return Films.fromJson(jsonObject);
  }

}