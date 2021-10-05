import 'package:flutter/material.dart';
import 'package:flutter_swapi/Starships_page.dart';
import 'package:flutter_swapi/Vehicles_page.dart';
import 'package:flutter_swapi/films_page.dart';
import 'package:flutter_swapi/peoples_page.dart';
import 'package:flutter_swapi/planets_page.dart';
import 'package:flutter_swapi/species_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SWAPI APPS',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'SWAPI APPS'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Spacer(
              flex: 1,
            ),
            const Image(
              image: AssetImage("assets/logo.png"),
              width: 200,
              height: 200,
            ),
            const Spacer(
              flex: 1,
            ),
            Row(
              children: <Widget>[
                const Spacer(
                  flex: 2,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                      return FilmPage();
                    }));
                  },
                  child: const Image(
                    image: AssetImage("assets/films.png"),
                    width: 50,
                    height: 50,
                  ),
                ),
                Spacer(flex: 1),
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                      return PeoplesPage();
                    }));
                  },
                  child: const Image(
                    image: AssetImage("assets/peoples.png"),
                    width: 50,
                    height: 50,
                  ),
                ),
                Spacer(flex: 2),
              ],
            ),
            const Spacer(
              flex: 1,
            ),
            Row(
              children: <Widget>[
                const Spacer(
                  flex: 2,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                      return PlanetsPage();
                    }));
                  },
                  child: const Image(
                    image: AssetImage("assets/planets.png"),
                    width: 50,
                    height: 50,
                  ),
                ),
                Spacer(flex: 1),
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                      return SpeciesPage();
                    }));
                  },
                  child: const Image(
                    image: AssetImage("assets/species.png"),
                    width: 50,
                    height: 50,
                  ),
                ),
                Spacer(flex: 2),
              ],
            ),
            const Spacer(
              flex: 1,
            ),
            Row(
              children: <Widget>[
                const Spacer(
                  flex: 2,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                      return StarshipsPage();
                    }));
                  },
                  child: const Image(
                    image: AssetImage("assets/starships.png"),
                    width: 50,
                    height: 50,
                  ),
                ),
                Spacer(flex: 1),
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                      return VehiclesPage();
                    }));
                  },
                  child: const Image(
                    image: AssetImage("assets/vehicles.png"),
                    width: 50,
                    height: 50,
                  ),
                ),
                Spacer(flex: 2),
              ],
            ),
            const Spacer(
              flex: 3,
            ),
          ],
        ),
      ),
    );
  }
}
