// ignore_for_file: prefer_const_constructors

import 'package:challenge/dummy_data/dummy_data.dart';
import 'package:flutter/material.dart';

class SolutionVehicleDetailsPage extends StatelessWidget {
  final PerfectVehicle vehicle;

  const SolutionVehicleDetailsPage({Key? key, required this.vehicle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Vehicle details'),
        backgroundColor: vehicle.color,
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        ListTile(
          title: Text('${vehicle.mileage}'),
          subtitle: Text('Mileage'),
          trailing: Icon(Icons.abc_sharp),
        ),
        ListTile(
          title: Text(vehicle.color.toString()),
          subtitle: Text('Color'),
          trailing: Icon(Icons.abc_sharp),
        ),
        ListTile(
          title: Text('${vehicle.numberOfDoors}'),
          subtitle: Text('Number of Doors'),
          trailing: Icon(Icons.abc_sharp),
        ),
        ListTile(
          title: Text('${vehicle.numberOfWheels}'),
          subtitle: Text('Number of wheels'),
          trailing: Icon(Icons.abc_sharp),
        ),
      ]),
    );
  }
}
