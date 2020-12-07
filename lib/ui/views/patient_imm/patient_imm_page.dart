import 'package:fhir/primitive_types/primitive_types.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vax_cast/vax_cast.dart';
import 'package:vigor/ui/styled_components/app_bar.dart';

import '../../../controllers/local/patient_imm/patient_imm_controller.dart';
import '../../../localization.dart';
import 'widgets/dose_options.dart';

class PatientImmPage extends StatelessWidget {
  final PatientImmController controller = Get.put(PatientImmController());
  final _displayVaxDates = <String, List<FhirDateTime>>{};
  final _greyBoxDecoration = BoxDecoration(color: Colors.grey[100]);

  @override
  Widget build(BuildContext context) {
    final labels = AppLocalizations.of(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: VigorAppBar(title: labels.medical.immunizations),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 4.0),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                icon:
                    Icon(Icons.edit, color: Get.theme.colorScheme.onBackground),
                onPressed: () => controller.editPatient(),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${labels.general.name.name}: ${controller.name()}',
                    style: Get.textTheme.headline6
                        .copyWith(fontSize: Get.width / 18),
                  ),
                  SizedBox(height: 4.0),
                  Text(
                    '${labels.general.birthDate}: ${controller.birthDate()}',
                    style: Get.textTheme.headline6
                        .copyWith(fontSize: Get.width / 18),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 32.0),
          FutureBuilder(
            future: controller.loadImmunizations(),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.hasData) {
                controller
                    .immHx()
                    .forEach((v, k) => _displayVaxDates[v] = k.toList());
                return Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Column(
                    children: [
                      Table(
                        defaultVerticalAlignment:
                            TableCellVerticalAlignment.bottom,
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
                            _valid('Tuberculosis', 0),
                            DoseOptions.na(),
                            DoseOptions.na(),
                            DoseOptions.na(),
                            DoseOptions.na(),
                            DoseOptions.na(),
                          ]),
                          TableRow(decoration: _greyBoxDecoration, children: [
                            _rowName('Anti-Hepatitis B\n', 'HepB', context),
                            _valid('HepB', 0),
                            DoseOptions.possible(),
                            DoseOptions.possible(),
                            DoseOptions.possible(),
                            DoseOptions.na(),
                            DoseOptions.na(),
                          ]),
                          TableRow(decoration: _greyBoxDecoration, children: [
                            _rowName('Anti-Rotavirus\n', 'Rotavirus', context),
                            DoseOptions.na(),
                            _valid('Rotavirus', 2),
                            _valid('Rotavirus', 4),
                            DoseOptions.na(),
                            DoseOptions.na(),
                            DoseOptions.na(),
                          ]),
                          TableRow(decoration: _greyBoxDecoration, children: [
                            _rowName('Anti-Polio\n', 'Polio', context),
                            DoseOptions.na(),
                            _valid('Polio', 2),
                            _valid('Polio', 4),
                            _valid('Polio', 6),
                            _valid('Polio', 18),
                            _valid('Polio', 48),
                          ]),
                          TableRow(decoration: _greyBoxDecoration, children: [
                            _rowName('Pentavalente (DPT/HB/Hib)',
                                'Pentavalente', context),
                            DoseOptions.na(),
                            _valid('Pentavalente', 2),
                            _valid('Pentavalente', 4),
                            _valid('Pentavalente', 6),
                            DoseOptions.na(),
                            DoseOptions.na(),
                          ]),
                          TableRow(decoration: _greyBoxDecoration, children: [
                            _rowName('Anti-Neumococo', 'Pneumococcal', context),
                            DoseOptions.na(),
                            _valid('Pneumococcal', 2),
                            _valid('Pneumococcal', 4),
                            DoseOptions.na(),
                            _valid('Pneumococcal', 12),
                            DoseOptions.na(),
                          ]),
                          TableRow(decoration: _greyBoxDecoration, children: [
                            _rowName('Influenza', 'Influenza', context),
                            DoseOptions.na(),
                            _valid('Influenza', 6),
                            _valid('Influenza', 12),
                            _valid('Influenza', 24),
                            _valid('Influenza', 36),
                            _valid('Influenza', 48),
                          ]),
                          TableRow(decoration: _greyBoxDecoration, children: [
                            _rowName('SRP\n', 'MMR', context),
                            DoseOptions.na(),
                            _valid('MMR', 12),
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
                            _valid('DTP', 18),
                            _valid('DTP', 48),
                          ]),
                          TableRow(
                            decoration: _greyBoxDecoration,
                            children: [
                              _rowName('SR\n', 'MR', context),
                              DoseOptions.na(),
                              // _valid('MR', 12),
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
          ),
        ],
      ),
    );
  }

  Widget _vaxDose(String dose) =>
      TableCell(child: Text(dose, style: TextStyle(fontSize: 16)));

  Widget _valid(String name, int months) {
    if (_displayVaxDates[name] == null) {
      return DoseOptions.open();
    } else if (_displayVaxDates[name].isEmpty) {
      if (VaxDate.fromString(controller.birthDate()).change('$months months') <=
          VaxDate.now()) {
        return DoseOptions.overdue();
      } else {
        return DoseOptions.open();
      }
    }

    while (_displayVaxDates[name].isNotEmpty) {
      if (VaxDate.fromString(controller.birthDate()).change('$months months') <=
          VaxDate.fromString(_displayVaxDates[name].first.toJson())) {
        if (VaxDate.fromString(_displayVaxDates[name].first.toJson()) ==
            VaxDate.fromString(VaxDate.now().toString())) {
          _displayVaxDates[name].remove(_displayVaxDates[name].first);
          return DoseOptions.completedToday();
        } else {
          _displayVaxDates[name].remove(_displayVaxDates[name].first);
          return DoseOptions.completed();
        }
      } else {
        _displayVaxDates[name].remove(_displayVaxDates[name].first);
      }
    }
    if (VaxDate.fromString(controller.birthDate()).change('$months months') <=
        VaxDate.now()) {
      return DoseOptions.overdue();
    } else if (VaxDate.fromString(controller.birthDate())
            .change('${months + 2} months') <=
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
      onPressed: () => null,
      //controller.displayDatesDialog(text, dz),
    );
  }
}
