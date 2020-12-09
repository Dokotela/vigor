import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:vigor/_internal/constants/dose_display.dart';
import 'package:vigor/_internal/utils/utils.dart';

Widget doseOptions(
    Either<DoseDisplay, String> display, BoxDecoration decoration) {
  return display.fold(
    (l) {
      switch (l) {
        case DoseDisplay.open:
          return Container(
            alignment: Alignment.center,
            color: decoration.color,
            child: Text(' \n'),
          );

        case DoseDisplay.due:
          return Container(
            alignment: Alignment.center,
            color: decoration.color,
            child: Icon(Icons.access_time, color: Colors.orange, size: 24),
          );

        case DoseDisplay.completedToday:
          return Container(
            alignment: Alignment.center,
            child: IconButton(
                color: Colors.yellow,
                icon: Icon(Icons.check_circle, color: Colors.green, size: 24),
                tooltip: dateFromDateTime(DateTime.now()),
                onPressed: () {}),
          );

        case DoseDisplay.overdue:
          return Container(
              alignment: Alignment.center,
              color: decoration.color,
              child: Icon(Icons.warning, color: Colors.red, size: 24));

        case DoseDisplay.na:
          return Container(
              alignment: Alignment.center,
              color: Colors.black,
              child: Text(' \n'));

        case DoseDisplay.possible:
          return Container(
              alignment: Alignment.center,
              color: decoration.color,
              child: Text(' \n'));

        default:
          return Container(
              alignment: Alignment.center,
              color: decoration.color,
              child: Text(' \n'));
      }
    },
    (r) => Container(
      alignment: Alignment.center,
      child: Icon(
        Icons.check_circle,
        color: Colors.green,
      ),
    ),
  );
}
