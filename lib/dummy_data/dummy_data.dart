import 'package:flutter/material.dart';

class PerfectVehicle {
  final int numberOfWheels;
  final int numberOfDoors;
  final Color color;
  final double mileage;

  PerfectVehicle(
      {required this.numberOfWheels,
      required this.numberOfDoors,
      required this.color,
      required this.mileage});

  static List<PerfectVehicle> getAllVehicles() => List.generate(
        50,
        (index) => PerfectVehicle(
            numberOfWheels: index % 2 == 0 ? 2 : 4,
            numberOfDoors: index % 2 == 0 ? 0 : 4,
            color: index % 2 == 0 ? Colors.blue : Colors.red,
            mileage: (index + 1) * 10),
      );
}
