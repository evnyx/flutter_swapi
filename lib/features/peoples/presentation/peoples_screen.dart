import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

import '../../../main.dart';
import '../model/peoples.dart';

class PeoplesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyPeoplesPage(title: 'PEOPLES PAGE'),
    );
  }
}

class MyPeoplesPage extends StatefulWidget {
  const MyPeoplesPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyPeoplesPage> createState() => _MyPeoplesPageState();
}

class _MyPeoplesPageState extends State<MyPeoplesPage>{
  Peoples? peoples;
  final myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("PEOPLES PAGE"),
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
                      hintText: 'Input ID 1-82',
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
                        Peoples.connectToApi("82").then((value) {
                          peoples = value;
                          setState(() {}
                          );
                        });
                      }
                      Peoples.connectToApi(myController.text).then((value) {
                        peoples = value;
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
                Text((peoples != null) ?
                    peoples!.name! + "\n" +
                        peoples!.height! + "\n" +
                        peoples!.mass! + "\n" +
                        peoples!.hairColor! + "\n" +
                        peoples!.skinColor! + "\n" +
                        peoples!.eyeColor! + "\n" +
                        peoples!.birthYear! + "\n" +
                        peoples!.gender! + "\n" +
                        peoples!.created! + "\n" +
                        peoples!.edited! + "\n" +
                        peoples!.url! + "\n" : "No Data",
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
