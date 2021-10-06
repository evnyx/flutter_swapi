import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

import 'main.dart';
import 'model/planets.dart';
import 'model/species.dart';

class SpeciesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MySpeciesPage(title: 'SPECIES PAGE'),
    );
  }
}

class MySpeciesPage extends StatefulWidget {
  const MySpeciesPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MySpeciesPage> createState() => _MySpeciesPageState();
}

class _MySpeciesPageState extends State<MySpeciesPage>{
  Species? species;
  final myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("SPECIES PAGE"),
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
                      hintText: 'Input ID 1-37',
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
                      Species.connectToApi(myController.text).then((value) {
                        species = value;
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
                Text((species != null) ?
                species!.name + "\n" +
                    species!.classification + "\n" +
                    species!.designation + "\n" +
                    species!.averageHeight + "\n" +
                    species!.skinColors + "\n" +
                    species!.hairColors + "\n" +
                    species!.eyeColors + "\n" +
                    species!.averageLifespan + "\n" +
                    species!.language + "\n" : "No Data",
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
