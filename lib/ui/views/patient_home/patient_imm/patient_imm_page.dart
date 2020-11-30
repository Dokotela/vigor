import 'package:fhir/primitive_types/primitive_types.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vax_cast/vax_cast.dart';
import 'package:vigor/controllers/local/patient_home/patient_home_controller.dart';
import 'package:vigor/routes/routes.dart';

import 'dose_options.dart';

class PatientImmPage extends StatelessWidget {
  final PatientHomeController controller = Get.find();
  final _greyBoxDecoration = BoxDecoration(color: Colors.grey[100]);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: controller.loadImmunizations(),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.hasData) {
          final immHx = controller.immHx();
          immHx.forEach((k, v) => print('$k: $v'));
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
                      decoration: _greyBoxDecoration,
                      children: [
                        TableCell(
                            child: Text('Deworming',
                                style: TextStyle(fontSize: 18))),
                        TableCell(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [Text('1\n'), DoseOptions.completed()],
                          ),
                        ),
                        TableCell(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [Text('2\n'), DoseOptions.completed()],
                          ),
                        ),
                        TableCell(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [Text('3\n'), DoseOptions.completed()],
                          ),
                        ),
                        TableCell(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [Text('4\n'), DoseOptions.overdue()],
                          ),
                        ),
                        TableCell(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [Text('5\n')],
                          ),
                        ),
                        TableCell(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [Text('6\n')],
                          ),
                        ),
                      ],
                    ),
                    TableRow(
                      decoration: _greyBoxDecoration,
                      children: [
                        TableCell(
                            child: Text('Doses\n',
                                style: TextStyle(fontSize: 18))),
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
                      decoration: _greyBoxDecoration,
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
                    TableRow(decoration: _greyBoxDecoration, children: [
                      _rowName('Anti-BCG\n', 'Tuberculosis', context),
                      _valid('Tuberculosis', 0, immHx),
                      DoseOptions.na(),
                      DoseOptions.na(),
                      DoseOptions.na(),
                      DoseOptions.na(),
                      DoseOptions.na(),
                    ]),
                    TableRow(decoration: _greyBoxDecoration, children: [
                      _rowName('Anti-Hepatitis B\n', 'HepB', context),
                      _valid('HepB', 0, immHx),
                      DoseOptions.possible(),
                      DoseOptions.possible(),
                      DoseOptions.possible(),
                      DoseOptions.na(),
                      DoseOptions.na(),
                    ]),
                    TableRow(decoration: _greyBoxDecoration, children: [
                      _rowName('Anti-Rotavirus\n', 'Rotavirus', context),
                      DoseOptions.na(),
                      _valid('Rotavirus', 2, immHx),
                      _valid('Rotavirus', 4, immHx),
                      DoseOptions.na(),
                      DoseOptions.na(),
                      DoseOptions.na(),
                    ]),
                    TableRow(decoration: _greyBoxDecoration, children: [
                      _rowName('Anti-Polio\n', 'Polio', context),
                      DoseOptions.na(),
                      _valid('Polio', 2, immHx),
                      _valid('Polio', 4, immHx),
                      _valid('Polio', 6, immHx),
                      _valid('Polio', 18, immHx),
                      _valid('Polio', 48, immHx),
                    ]),
                    TableRow(decoration: _greyBoxDecoration, children: [
                      _rowName(
                          'Pentavalente (DPT/HB/Hib)', 'Pentavalente', context),
                      DoseOptions.na(),
                      _valid('Pentavalente', 2, immHx),
                      _valid('Pentavalente', 4, immHx),
                      _valid('Pentavalente', 6, immHx),
                      DoseOptions.na(),
                      DoseOptions.na(),
                    ]),
                    TableRow(decoration: _greyBoxDecoration, children: [
                      _rowName('Anti-Neumococo', 'Pneumococcal', context),
                      DoseOptions.na(),
                      _valid('Pneumococcal', 2, immHx),
                      _valid('Pneumococcal', 4, immHx),
                      DoseOptions.na(),
                      _valid('Pneumococcal', 12, immHx),
                      DoseOptions.na(),
                    ]),
                    TableRow(decoration: _greyBoxDecoration, children: [
                      _rowName('Influenza', 'Influenza', context),
                      DoseOptions.na(),
                      _valid('Influenza', 6, immHx),
                      _valid('Influenza', 12, immHx),
                      _valid('Influenza', 24, immHx),
                      _valid('Influenza', 36, immHx),
                      _valid('Influenza', 48, immHx),
                    ]),
                    TableRow(decoration: _greyBoxDecoration, children: [
                      _rowName('SRP\n', 'MMR', context),
                      DoseOptions.na(),
                      _valid('MMR', 12, immHx),
                      DoseOptions.na(),
                      DoseOptions.na(),
                      DoseOptions.na(),
                      DoseOptions.na(),
                    ]),
                    TableRow(decoration: _greyBoxDecoration, children: [
                      _rowName('DPT\n', 'DTP', context),
                      DoseOptions.na(),
                      DoseOptions.possible(),
                      DoseOptions.possible(),
                      DoseOptions.possible(),
                      _valid('DTP', 18, immHx),
                      _valid('DTP', 48, immHx),
                    ]),
                    TableRow(
                      decoration: _greyBoxDecoration,
                      children: [
                        _rowName('SR\n', 'MR', context),
                        DoseOptions.na(),
                        // _valid('MR', 12, immHx),
                        DoseOptions.possible(),
                        DoseOptions.na(),
                        DoseOptions.na(),
                        DoseOptions.na(),
                        DoseOptions.na(),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          );
        } else {
          return CircularProgressIndicator();
        }
      },
    );
  }

  Widget _vaxDose(String dose) =>
      TableCell(child: Text(dose, style: TextStyle(fontSize: 16)));

  Widget _valid(String name, int months, Map<String, Set<FhirDateTime>> immHx) {
    var editImmHx = immHx[name].toSet();
    if (editImmHx == null) {
      return DoseOptions.open();
    } else if (editImmHx.isEmpty) {
      if (VaxDate.fromString(controller.birthDate()).change('$months months') <=
          VaxDate.now()) {
        return DoseOptions.overdue();
      } else {
        return DoseOptions.open();
      }
    }
    while (editImmHx.isNotEmpty) {
      if (VaxDate.fromString(controller.birthDate()).change('$months months') <=
          VaxDate.fromString(editImmHx.first.toJson())) {
        editImmHx.remove(editImmHx.first);
        return DoseOptions.completed();
      } else {
        editImmHx.remove(editImmHx.first);
      }
    }
    if (VaxDate.fromString(controller.birthDate()).change('$months months') <=
        VaxDate.now()) {
      return DoseOptions.overdue();
    } else if (VaxDate.fromString(controller.birthDate())
            .change('${months + 1} months') <=
        VaxDate.now()) {
      return DoseOptions.due();
    } else {
      return DoseOptions.open();
    }
  }

  Widget _rowName(String text, String dz, BuildContext context) {
    return FlatButton(
      padding: EdgeInsets.zero,
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      color: Colors.grey[100],
      child: Text(text, style: TextStyle(fontSize: 15)),
      onPressed: () => Get.toNamed(AppRoutes.VAX_DATES, arguments: [text, dz]),
    );
  }
}
