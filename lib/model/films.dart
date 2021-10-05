import 'dart:convert';
import 'package:flutter/cupertino.dart';
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

  factory Films.createFilm(Map<String, dynamic> object)
  {
    return Films(
      title: object['title'],
      episode_id: object['episode_id'],
      opening_crawl: object['opening_crawl'],
      director: object['director'],
      producer: object['producer']

    );
  }

  static Future<Films> connectToApi(String id) async
  {
    String apiURL = "https://swapi.dev/api/films/"+id;

    var apiResult = await http.get(Uri.parse(apiURL)
    );
    var jsonObject = json.decode(apiResult.body);

    return Films.createFilm(jsonObject);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }

}