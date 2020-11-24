import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vax_cast/vax_cast.dart';
import 'package:vigor/controllers/local/patient_home/patient_home_controller.dart';

import 'dose_options.dart';

class PatientImmPage extends StatelessWidget {
  final PatientHomeController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Column(
        children: [
          Table(
            defaultVerticalAlignment: TableCellVerticalAlignment.bottom,
            border: TableBorder.symmetric(
                inside: BorderSide(width: 1, color: Colors.white),
                outside: BorderSide(width: 1, color: Colors.white)),
            columnWidths: {
              0: FixedColumnWidth(Get.width / 3),
            },
            children: [
              TableRow(
                decoration: BoxDecoration(color: Colors.grey[100]),
                children: [
                  TableCell(
                      child: Text('Deworming', style: TextStyle(fontSize: 18))),
                  TableCell(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('1\n'),
                        DoseOptions.completed(),
                      ],
                    ),
                  ),
                  TableCell(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('2\n'),
                        DoseOptions.completed(),
                      ],
                    ),
                  ),
                  TableCell(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('3\n'),
                        DoseOptions.completed(),
                      ],
                    ),
                  ),
                  TableCell(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('4\n'),
                        DoseOptions.overdue(),
                      ],
                    ),
                  ),
                  TableCell(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('5\n'),
                      ],
                    ),
                  ),
                  TableCell(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('6\n'),
                      ],
                    ),
                  ),
                ],
              ),
              TableRow(
                decoration: BoxDecoration(color: Colors.grey[100]),
                children: [
                  TableCell(
                      child: Text('Doses\n', style: TextStyle(fontSize: 18))),
                  TableCell(child: Text('7\n')),
                  TableCell(child: Text('8\n')),
                  TableCell(child: Text('9\n')),
                  TableCell(child: Text('10\n')),
                  TableCell(child: Text('11\n')),
                  TableCell(child: Text('12\n')),
                ],
              ),
            ],
          ),
          Table(
            defaultVerticalAlignment: TableCellVerticalAlignment.bottom,
            border: TableBorder.symmetric(
                inside: BorderSide(width: 1, color: Colors.white),
                outside: BorderSide(width: 1, color: Colors.white)),
            columnWidths: {
              0: FixedColumnWidth(Get.width / 3),
            },
            children: [
              TableRow(
                decoration: BoxDecoration(color: Colors.grey[100]),
                children: [
                  TableCell(child: Text('')),
                  _vaxDose('Dosis RN'),
                  _vaxDose('1ra Dosis'),
                  _vaxDose('2da Dosis'),
                  _vaxDose('3rd Dosis'),
                  _vaxDose('1er Ref'),
                  _vaxDose('2da Ref'),
                ],
              ),
              TableRow(
                  decoration: BoxDecoration(color: Colors.grey[100]),
                  children: [
                    _rowName('Anti-BCG\n'),
                    Obx(() => _valid('Tuberculosis', 0)),
                    DoseOptions.na(),
                    DoseOptions.na(),
                    DoseOptions.na(),
                    DoseOptions.na(),
                    DoseOptions.na(),
                  ]),
              TableRow(
                  decoration: BoxDecoration(color: Colors.grey[100]),
                  children: [
                    _rowName('Anti-Hepatitis B\n'),
                    _valid('HepB', 0),
                    _valid('HepB', 2),
                    _valid('HepB', 4),
                    _valid('HepB', 6),
                    DoseOptions.na(),
                    DoseOptions.na(),
                  ]),
              TableRow(
                  decoration: BoxDecoration(color: Colors.grey[100]),
                  children: [
                    _rowName('Anti-Rotavirus\n'),
                    DoseOptions.na(),
                    DoseOptions.completed(),
                    DoseOptions.completed(),
                    DoseOptions.na(),
                    DoseOptions.na(),
                    DoseOptions.na(),
                  ]),
              TableRow(
                  decoration: BoxDecoration(color: Colors.grey[100]),
                  children: [
                    _rowName('Anti-Polio\n'),
                    DoseOptions.na(),
                    DoseOptions.completed(),
                    DoseOptions.overdue(),
                    DoseOptions.open(),
                    DoseOptions.open(),
                    DoseOptions.open(),
                  ]),
              TableRow(
                  decoration: BoxDecoration(color: Colors.grey[100]),
                  children: [
                    _rowName('Pentavalente (DPT/HB/Hib)'),
                    DoseOptions.na(),
                    DoseOptions.completed(),
                    DoseOptions.overdue(),
                    DoseOptions.open(),
                    DoseOptions.na(),
                    DoseOptions.na(),
                  ]),
              TableRow(
                  decoration: BoxDecoration(color: Colors.grey[100]),
                  children: [
                    _rowName('Anti-Neumococo'),
                    DoseOptions.na(),
                    DoseOptions.completed(),
                    DoseOptions.overdue(),
                    DoseOptions.na(),
                    DoseOptions.open(),
                    DoseOptions.na(),
                  ]),
              TableRow(
                  decoration: BoxDecoration(color: Colors.grey[100]),
                  children: [
                    _rowName('Influenza'),
                    DoseOptions.na(),
                    DoseOptions.completed(),
                    DoseOptions.overdue(),
                    DoseOptions.na(),
                    DoseOptions.open(),
                    DoseOptions.open(),
                  ]),
              TableRow(
                  decoration: BoxDecoration(color: Colors.grey[100]),
                  children: [
                    _rowName('SRP\n'),
                    DoseOptions.na(),
                    DoseOptions.completed(),
                    DoseOptions.na(),
                    DoseOptions.na(),
                    DoseOptions.na(),
                    DoseOptions.na(),
                  ]),
              TableRow(
                  decoration: BoxDecoration(color: Colors.grey[100]),
                  children: [
                    _rowName('DPT\n'),
                    DoseOptions.na(),
                    DoseOptions.possible(),
                    DoseOptions.possible(),
                    DoseOptions.possible(),
                    DoseOptions.open(),
                    DoseOptions.open(),
                  ]),
              TableRow(
                  decoration: BoxDecoration(color: Colors.grey[100]),
                  children: [
                    _rowName('SR\n'),
                    DoseOptions.na(),
                    DoseOptions.possible(),
                    DoseOptions.na(),
                    DoseOptions.na(),
                    DoseOptions.na(),
                    DoseOptions.na(),
                  ]),
            ],
          ),
        ],
      ),
    );
  }

  Widget _vaxDose(String dose) =>
      TableCell(child: Text(dose, style: TextStyle(fontSize: 16)));

  Widget _valid(String name, int months) {
    if (controller.patient.immHx[name] == null) {
      return DoseOptions.open();
    }
    if (controller.patient.immHx[name].value1 == 0) {
      return DoseOptions.open();
    }
    while (controller.patient.immHx[name].value1 > 0) {
      if (VaxDate.fromString(controller.birthDate()).change('$months months') <=
          VaxDate.fromString(
              controller.patient.immHx[name].value2[0].toJson())) {
        controller.patient.immHx[name].value2.removeAt(0);
        controller.patient.immHx[name] = Tuple2(
            controller.patient.immHx[name].value1 - 1,
            controller.patient.immHx[name].value2);
        return DoseOptions.completed();
      } else {
        controller.patient.immHx[name].value2.removeAt(0);
        controller.patient.immHx[name] = Tuple2(
            controller.patient.immHx[name].value1 - 1,
            controller.patient.immHx[name].value2);
      }
    }
    return DoseOptions.open();
  }

  Widget _rowName(String text) => TableCell(
        verticalAlignment: TableCellVerticalAlignment.middle,
        child: Container(
          color: Colors.grey[100],
          child: Text(text, style: TextStyle(fontSize: 15)),
        ),
      );
}
