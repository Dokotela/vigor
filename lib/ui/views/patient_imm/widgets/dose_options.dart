import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:vigor/_internal/constants/dose_display.dart';
import 'package:vigor/_internal/utils/utils.dart';

Widget doseOptions(Either<DoseDisplay, String> display) {
  return display.fold(
    (l) {
      switch (l) {
        case DoseDisplay.open:
          return Container(
            color: Colors.grey[100],
            child: Text(' \n'),
          );

        case DoseDisplay.due:
          return Container(
            color: Colors.grey[100],
            child: Icon(Icons.access_time, color: Colors.orange, size: 24),
          );

        case DoseDisplay.completedToday:
          return IconButton(
              color: Colors.yellow,
              icon: Icon(Icons.check_circle, color: Colors.green, size: 24),
              tooltip: dateFromDateTime(DateTime.now()),
              onPressed: () {});

        case DoseDisplay.overdue:
          return Container(
              color: Colors.grey[100],
              child: Icon(Icons.warning, color: Colors.red, size: 24));

        case DoseDisplay.na:
          return Container(color: Colors.black, child: Text(' \n'));

        case DoseDisplay.possible:
          return Container(color: Colors.grey[400], child: Text(' \n'));

        default:
          return Container(color: Colors.grey[400], child: Text(' \n'));
      }
    },
    (r) => Icon(
      Icons.check_circle,
      color: Colors.green,
      semanticLabel: 'helllo',
    ),
  );
}
