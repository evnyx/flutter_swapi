import 'package:flutter/material.dart';

class StarshipsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Starships Page"),),
        body: Center(
            child: RaisedButton(
              child: Text("Starships"),
              onPressed: () {},
            ),
        ),
    );
    throw UnimplementedError();
  }
}
