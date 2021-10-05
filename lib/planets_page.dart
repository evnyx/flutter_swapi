import 'package:flutter/material.dart';

class PlanetsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Planets Page"),),
        body: Center(
            child: RaisedButton(
              child: Text("Planets"),
              onPressed: () {},
            ),
        ),
    );
    throw UnimplementedError();
  }
}
