import 'package:challenge/dummy_data/dummy_data.dart';
import 'package:challenge/possible_solution/solution_details.dart';

import 'package:flutter/material.dart';

class SolutionListViewPage extends StatefulWidget {
  const SolutionListViewPage({Key? key}) : super(key: key);

  @override
  State<SolutionListViewPage> createState() => _SolutionListViewPageState();
}

class _SolutionListViewPageState extends State<SolutionListViewPage> {
  late final List<PerfectVehicle> vehicles;

  @override
  void initState() {
    super.initState();
    vehicles = PerfectVehicle.getAllVehicles();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Vehicles',
        ),
        backgroundColor: Colors.black,
      ),
      // body: Container(),
      body: SafeArea(
        child: Column(
          children: [
            Flexible(
              child: ListView.builder(
                itemCount: vehicles.length,
                itemBuilder: (context, index) {
                  final PerfectVehicle vehicle = vehicles[index];

                  return ListTile(
                    tileColor: vehicle.color,
                    title: Text('Mileage: ${vehicle.mileage}'),
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) =>
                              SolutionVehicleDetailsPage(vehicle: vehicle),
                        ),
                      );
                    },
                    subtitle: Text(
                        'Doors: ${vehicle.numberOfDoors} Wheels: ${vehicle.numberOfWheels}'),
                  );
                },
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.blue),
                    ),
                    height: 50,
                    child: Text(
                      'Purchase a vehicle',
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
