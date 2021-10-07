import 'dart:convert';
import 'package:http/http.dart' as http;

class Starships {
  String? name;
  String? model;
  String? manufacturer;
  String? costInCredits;
  String? length;
  String? maxAtmospheringSpeed;
  String? crew;
  String? passengers;
  String? cargoCapacity;
  String? consumables;
  String? hyperdriveRating;
  String? mGLT;
  String? starshipClass;
  List<Null>? pilots;
  List<String>? films;
  String? created;
  String? edited;
  String? url;

  Starships(
      {this.name,
        this.model,
        this.manufacturer,
        this.costInCredits,
        this.length,
        this.maxAtmospheringSpeed,
        this.crew,
        this.passengers,
        this.cargoCapacity,
        this.consumables,
        this.hyperdriveRating,
        this.mGLT,
        this.starshipClass,
        this.pilots,
        this.films,
        this.created,
        this.edited,
        this.url});

  factory Starships.fromJson(Map<String, dynamic> json) {
    return Starships(
        name : json['name'],
        model : json['model'],
        manufacturer : json['manufacturer'],
        costInCredits : json['cost_in_credits'],
        length : json['length'],
        maxAtmospheringSpeed : json['max_atmosphering_speed'],
        crew : json['crew'],
        passengers : json['passengers'],
        cargoCapacity : json['cargo_capacity'],
        consumables : json['consumables'],
        hyperdriveRating : json['hyperdrive_rating'],
        mGLT : json['MGLT'],
        starshipClass : json['starship_class'],
        films : json['films'].cast<String>(),
        created : json['created'],
        edited : json['edited'],
        url : json['url'],
    );
  }

  static Future<Starships> connectToApi(String id) async
  {
    String apiURL = "https://swapi.dev/api/starships/"+id;

    var apiResult = await http.get(Uri.parse(apiURL)
    );
    var jsonObject = json.decode(apiResult.body);

    return Starships.fromJson(jsonObject);
  }
}