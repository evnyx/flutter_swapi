import 'package:flutter/material.dart';

class SpeciesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Species Page"),),
        body: Center(
            child: RaisedButton(
              child: Text("Species"),
              onPressed: () {},
            ),
        ),
    );
    throw UnimplementedError();
  }
}
