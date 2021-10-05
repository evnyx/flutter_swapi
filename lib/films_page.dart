import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

import 'main.dart';
import 'model/films.dart';

class FilmPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyFilmsPage(title: 'FILMS PAGE'),
    );
  }
}

class MyFilmsPage extends StatefulWidget {
  const MyFilmsPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyFilmsPage> createState() => _MyFilmsPageState();
}

class _MyFilmsPageState extends State<MyFilmsPage>{
  Films? films;
  final myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("FILM PAGE"),
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
                    style: TextStyle(fontSize: 22.0, color: Colors.white),
                    decoration: const InputDecoration(
                      hintText: 'Keyword',
                    ),
                    controller: myController,
                  ),
                ),
                const Spacer(flex: 1),
                GestureDetector(
                  onTap: () {
                    Logger()..d("test ${myController.text}");
                      Films.connectToApi(myController.text).then((value) {
                      films = value;
                      setState(() {}
                      );
                    });
                  },
                  child: const Image(
                    image: AssetImage("assets/films.png"),
                    width: 50,
                    height: 50,
                  ),
                ),
                Spacer(flex: 1),
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
                Text((films != null) ? films!.title : "No Data",
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
