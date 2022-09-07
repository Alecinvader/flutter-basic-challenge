// ignore_for_file: prefer_const_constructors

import 'package:challenge/dummy_data/dummy_data.dart';
import 'package:flutter/material.dart';

/// This should be the page that is navigated to after a user clicks on a
/// list tile. This will display all four properties in a readable manner.
///
/// 1. Make sure that the top [AppBar] displays the color of the vehicle
///
/// 2. Reference the images for the proper layout (does not need to be scrollable)
class NameMeAgain extends StatelessWidget {
  const NameMeAgain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        // TODO: Need some way to display all properties of [PerfectVehicle]
      ]),
    );
  }
}
