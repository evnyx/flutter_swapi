import 'package:flutter/material.dart';

class VehiclesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Vehicles Page"),),
        body: Center(
            child: RaisedButton(
              child: Text("Vehicles"),
              onPressed: () {},
            ),
        ),
    );
    throw UnimplementedError();
  }
}
