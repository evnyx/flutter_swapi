import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

import '../../../main.dart';
import '../../planets/model/planets.dart';
import '../model/species.dart';

class SpeciesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MySpeciesScreen(title: 'SPECIES PAGE'),
    );
  }
}

class MySpeciesScreen extends StatefulWidget {
  const MySpeciesScreen({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MySpeciesScreen> createState() => _MySpeciesScreenState();
}

class _MySpeciesScreenState extends State<MySpeciesScreen>{
  Species? species;
  final myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("SPECIES PAGE"),
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
                      if (myController.text.isEmpty){
                        Species.connectToApi("37").then((value) {
                          species = value;
                          setState(() {}
                          );
                        });
                      }
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
                species!.name! + "\n" +
                    species!.classification! + "\n" +
                    species!.designation! + "\n" +
                    species!.averageHeight! + "\n" +
                    species!.skinColors! + "\n" +
                    species!.hairColors! + "\n" +
                    species!.eyeColors! + "\n" +
                    species!.averageLifespan! + "\n" +
                    species!.language! + "\n" +
                    species!.created! + "\n" +
                    species!.edited! + "\n" +
                    species!.url! + "\n" : "No Data",
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
