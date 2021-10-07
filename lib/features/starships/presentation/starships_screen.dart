import 'package:flutter/material.dart';
import 'package:flutter_swapi/features/starships/model/starships.dart';
import 'package:logger/logger.dart';

import '../../../main.dart';
import '../../planets/model/planets.dart';

class StarshipsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyStarshipsScreen(title: 'STARSHIPS PAGE'),
    );
  }
}

class MyStarshipsScreen extends StatefulWidget {
  const MyStarshipsScreen({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyStarshipsScreen> createState() => _MyStarshipsPageState();
}

class _MyStarshipsPageState extends State<MyStarshipsScreen>{
  Starships? starships;
  final myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("STARSHIPS PAGE"),
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
                        Starships.connectToApi("2").then((value) {
                          starships = value;
                          setState(() {}
                          );
                        });
                      }
                      Starships.connectToApi(myController.text).then((value) {
                        starships = value;
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
                Text((starships != null) ?
                    starships!.name! + "\n" +
                    starships!.manufacturer! + "\n" +
                    starships!.costInCredits! + "\n" +
                    starships!.length! + "\n" +
                    starships!.maxAtmospheringSpeed! + "\n" +
                    starships!.crew! + "\n" +
                    starships!.passengers! + "\n" +
                    starships!.cargoCapacity! + "\n" +
                    starships!.consumables! + "\n" +
                    starships!.hyperdriveRating! + "\n" +
                    starships!.mGLT! + "\n" +
                    starships!.starshipClass! + "\n" +
                    starships!.created! + "\n" +
                    starships!.edited! + "\n" +
                    starships!.url! + "\n": "No Data",
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
