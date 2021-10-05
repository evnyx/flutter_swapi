import 'package:flutter/material.dart';

class PeoplesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Peoples Page"),),
        body: Center(
            child: RaisedButton(
              child: Text("Peoples"),
              onPressed: () {},
            ),
        ),
    );
    throw UnimplementedError();
  }
}
