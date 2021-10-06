import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

import 'main.dart';
import 'model/planets.dart';

class PlanetsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyPlanetsPage(title: 'PLANETS PAGE'),
    );
  }
}

class MyPlanetsPage extends StatefulWidget {
  const MyPlanetsPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyPlanetsPage> createState() => _MyPlanetsPageState();
}

class _MyPlanetsPageState extends State<MyPlanetsPage>{
  Planets? planets;
  final myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("PLANETS PAGE"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Spacer(
              flex: 1,
            ),
            const Image(
              image: AssetImage("assets/logo.png"),
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
                    planets!.name + "\n" +
                    planets!.rotationPeriod + "\n" +
                    planets!.orbitalPeriod + "\n" +
                    planets!.diameter + "\n" +
                    planets!.climate + "\n" +
                    planets!.gravity + "\n" +
                    planets!.terrain + "\n" +
                    planets!.surfaceWater + "\n" +
                    planets!.population + "\n" : "No Data",
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
