import 'package:flutter/material.dart';
import 'package:flutter_swapi/features/vehicles/model/vehicles.dart';
import 'package:logger/logger.dart';

import '../../../main.dart';


class VehiclesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyVehiclesScreen(title: 'VEHICLES PAGE'),
    );
  }
}

class MyVehiclesScreen extends StatefulWidget {
  const MyVehiclesScreen({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyVehiclesScreen> createState() => _MyStarshipsPageState();
}

class _MyStarshipsPageState extends State<MyVehiclesScreen>{
  Vehicles? vehicles;
  final myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("VEHICLES PAGE"),
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
                    child: const Text("Search"),
                    onPressed: () {
                      if (myController.text.isEmpty){
                        Vehicles.connectToApi("30").then((value) {
                          vehicles = value;
                          setState(() {}
                          );
                        });
                      } else {
                        Vehicles.connectToApi(myController.text).then((value) {
                          vehicles = value;
                          setState(() {}
                          );
                        });
                      }
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
                Text((vehicles != null) ?
                vehicles!.name! + "\n" +
                    vehicles!.model! + "\n" +
                    vehicles!.manufacturer! + "\n" +
                    vehicles!.costInCredits! + "\n" +
                    vehicles!.length! + "\n" +
                    vehicles!.maxAtmospheringSpeed! + "\n" +
                    vehicles!.crew! + "\n" +
                    vehicles!.passengers! + "\n" +
                    vehicles!.cargoCapacity! + "\n" +
                    vehicles!.consumables! + "\n" +
                    vehicles!.name! + "\n" : "No Data",
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
