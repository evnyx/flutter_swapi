import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

import '../../../main.dart';
import '../model/planets.dart';

class PlanetsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyPlanetsScreen(title: 'PLANETS PAGE'),
    );
  }
}

class MyPlanetsScreen extends StatefulWidget {
  const MyPlanetsScreen({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyPlanetsScreen> createState() => _MyPlanetsScreenState();
}

class _MyPlanetsScreenState extends State<MyPlanetsScreen>{
  Planets? planets;
  final myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("PLANETS PAGE"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const MyApp()),
            );
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Spacer(
              flex: 1,
            ),
            const Image(
              image: AssetImage("lib/assets/logo.png"),
              width: 100,
              height: 100,
            ),
            const Spacer(
              flex: 1,
            ),
            Row(
              children: <Widget>[
                const Spacer(
                  flex: 1,
                ),
                SizedBox(
                  height: 40,
                  width: 200,
                  child: TextField(
                    autofocus: false,
                    style: TextStyle(fontSize: 22.0, color: Color(0xFFbdc6cf)),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Input ID 1-60',
                      contentPadding:
                      const EdgeInsets.only(left: 14.0, bottom: 8.0, top: 8.0),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(0),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(0),
                      ),
                    ),controller: myController,
                  ),
                ),
                const Spacer(flex: 1),
                RaisedButton(
                    color: Colors.white,
                    child: new Text("Search"),
                    onPressed: () {
                      if (myController.text.isEmpty){
                        Planets.connectToApi("3").then((value) {
                          planets = value;
                          setState(() {}
                          );
                        });
                      }
                      Planets.connectToApi(myController.text).then((value) {
                        planets = value;
                        setState(() {}
                        );
                      });
                    }),
                const Spacer(flex: 1),
              ],
            ),
            const Spacer(
              flex: 1,
            ),
            Row(
              children: <Widget>[
                const Spacer(
                  flex: 1,
                ),
                Text((planets != null) ?
                    planets!.name! + "\n" +
                    planets!.rotationPeriod! + "\n" +
                    planets!.orbitalPeriod! + "\n" +
                    planets!.diameter! + "\n" +
                    planets!.climate! + "\n" +
                    planets!.gravity! + "\n" +
                    planets!.terrain! + "\n" +
                    planets!.surfaceWater! + "\n" +
                    planets!.population! + "\n" +
                    planets!.url! + "\n" : "No Data",
                    style: TextStyle(color: Colors.white)),
                const Spacer(
                  flex: 1,
                ),
              ],
            ),
            const Spacer(
              flex: 2,
            ),
          ],
        ),
      ),
    );
  }
}
