import 'package:challenge/dummy_data/dummy_data.dart';
import 'package:challenge/possible_solution/solution_details.dart';

import 'package:flutter/material.dart';

// ignore: prefer_const_literals_to_create_immutables
/// This is the main page that will be displayed to your users in order
/// for them to select it and view the details of the vehicle.
///
/// 1. Name the class something meaningful besides [NameMe]
///
/// 2. Reference the images to build your layout
class NameMe extends StatefulWidget {
  const NameMe({Key? key}) : super(key: key);

  @override
  State<NameMe> createState() => _NameMeState();
}

class _NameMeState extends State<NameMe> {
  /// The [PerfectVehicle] class contians 4 properties and you will be using
  /// it to display a scrollable list of tiles that a user can interact with.
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
      body: Column(
        children: [
          // TODO: You need a scrollable list that a user can click on and then
          // navigate to a "Details" page

          // TODO: You need a "Purchase a Vehicle" button aligned at the bottom of the screen
        ],
      ),
    );
  }
}
