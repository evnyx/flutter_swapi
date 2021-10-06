import 'dart:convert';
import 'package:http/http.dart' as http;

class Peoples
{
  String name;
  String height;
  String mass;
  String hairColor;
  String skinColor;
  String eyeColor;
  String birthYear;
  String gender;

  Peoples({
      this.name="",
      this.height="",
      this.mass="",
      this.hairColor="",
      this.skinColor="",
      this.eyeColor="",
      this.birthYear="",
      this.gender="",});

  factory Peoples.fromJson(Map<String, dynamic> json)
  {
    return Peoples(
        name : json['name'],
        height : json['height'],
        mass : json['mass'],
        hairColor : json['hair_color'],
        skinColor : json['skin_color'],
        eyeColor : json['eye_color'],
        birthYear : json['birth_year'],
        gender : json['gender'],
    );
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