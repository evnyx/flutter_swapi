import 'package:flutter/material.dart';
import 'package:flutter_swapi/features/starships/presentation/starships_screen.dart';
import 'package:flutter_swapi/features/vehicles/presentation/vehicles_screen.dart';
import 'package:flutter_swapi/features/films/presentation/films_screen.dart';
import 'package:flutter_swapi/features/peoples/presentation/peoples_screen.dart';
import 'package:flutter_swapi/features/planets/presentation/planets_screen.dart';
import 'package:flutter_swapi/features/species/presentation/species_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

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
              image: AssetImage("lib/assets/logo.png"),
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
                      return FilmScreen();
                    }));
                  },
                  child: Column(
                      children: [
                        Image.asset(
                          'lib/assets/films.png',
                          width: 50,
                          height: 50,
                        ),
                        const Text('Films', style: TextStyle(color: Colors.white)),
                      ]
                  ),
                ),
                Spacer(flex: 1),
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                      return PeoplesPage();
                    }));
                  },
                  child: Column(
                      children: [
                        Image.asset(
                          'lib/assets/peoples.png',
                          width: 50,
                          height: 50,
                        ),
                        const Text('Peoples', style: TextStyle(color: Colors.white)),
                      ]
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
                      return PlanetsScreen();
                    }));
                  },
                  child: Column(
                      children: [
                        Image.asset(
                          'lib/assets/planets.png',
                          width: 50,
                          height: 50,
                        ),
                        const Text('Planets', style: TextStyle(color: Colors.white)),
                      ]
                  ),
                ),
                Spacer(flex: 1),
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                      return SpeciesScreen();
                    }));
                  },
                  child: Column(
                      children: [
                        Image.asset(
                          'lib/assets/species.png',
                          width: 50,
                          height: 50,
                        ),
                        const Text('Species', style: TextStyle(color: Colors.white)),
                      ]
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
                      return StarshipsScreen();
                    }));
                  },
                  child: Column(
                      children: [
                        Image.asset(
                          'lib/assets/starships.png',
                          width: 50,
                          height: 50,
                        ),
                          const Text('Starships', style: TextStyle(color: Colors.white)),
                      ]
                  ),
                ),
                Spacer(flex: 1),
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                      return VehiclesScreen();
                    }));
                  },
                  child: Column(
                      children: [
                      Image.asset(
                          'lib/assets/vehicles.png',
                          width: 50,
                          height: 50,
                      ),
                        const Text('Vehicles', style: TextStyle(color: Colors.white)),
                      ]
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
