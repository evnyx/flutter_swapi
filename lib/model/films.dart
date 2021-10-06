import 'dart:convert';
import 'package:http/http.dart' as http;

class Films
{
  String title;
  int episode_id;
  String opening_crawl;
  String director;
  String producer;


  Films({this.title = "",
    this.episode_id = 0,
    this.opening_crawl = "",
    this.director = "",
    this.producer = ""});

  factory Films.fromJson(Map<String, dynamic> json)
  {
    return Films(
        title: json['title'],
        episode_id: json['episode_id'],
        opening_crawl: json['opening_crawl'],
        director: json['director'],
        producer: json['producer']

    );
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