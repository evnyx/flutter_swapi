import 'dart:convert';
import 'package:http/http.dart' as http;

class Planets {
  String name;
  String rotationPeriod;
  String orbitalPeriod;
  String diameter;
  String climate;
  String gravity;
  String terrain;
  String surfaceWater;
  String population;

  Planets(
      {this.name="",
        this.rotationPeriod="",
        this.orbitalPeriod="",
        this.diameter="",
        this.climate="",
        this.gravity="",
        this.terrain="",
        this.surfaceWater="",
        this.population=""});

  factory Planets.fromJson(Map<String, dynamic> json) {
    return Planets(
        name : json['name'],
        rotationPeriod: json['rotation_period'],
        orbitalPeriod : json['orbital_period'],
        diameter : json['diameter'],
        climate : json['climate'],
        gravity : json['gravity'],
        terrain : json['terrain'],
        surfaceWater : json['surface_water'],
        population : json['population']
    );
  }

  static Future<Planets> connectToApi(String id) async
  {
    String apiURL = "https://swapi.dev/api/planets/"+id;

    var apiResult = await http.get(Uri.parse(apiURL)
    );
    var jsonObject = json.decode(apiResult.body);

    return Planets.fromJson(jsonObject);
  }
}