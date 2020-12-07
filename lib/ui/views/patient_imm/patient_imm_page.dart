import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vigor/ui/styled_components/app_bar.dart';
import 'package:vigor/ui/styled_components/bottom_navigation_bar.dart';

import '../../../controllers/local/patient_imm/patient_imm_controller.dart';
import '../../../localization.dart';
import 'widgets/dose_options.dart';

class PatientImmPage extends StatelessWidget {
  final PatientImmController controller = Get.put(PatientImmController());
  final _greyBoxDecoration = BoxDecoration(color: Colors.grey[100]);

  @override
  Widget build(BuildContext context) {
    final labels = AppLocalizations.of(context);
    controller.displayVaxDates();

    return Obx(
      () => Scaffold(
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
                  icon: Icon(Icons.edit,
                      color: Get.theme.colorScheme.onBackground),
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
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Column(
                children: [
                  Container(
                    child: Table(
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
                          _rowName('Anti-BCG', 'Tuberculosis', context),
                          doseOptions(controller.isValid('Tuberculosis', 0)),
                          doseOptions(left(DoseDisplay.na)),
                          doseOptions(left(DoseDisplay.na)),
                          doseOptions(left(DoseDisplay.na)),
                          doseOptions(left(DoseDisplay.na)),
                          doseOptions(left(DoseDisplay.na)),
                        ]),
                        TableRow(decoration: _greyBoxDecoration, children: [
                          _rowName('Anti-Hepatitis B', 'HepB', context),
                          doseOptions(controller.isValid('HepB', 0)),
                          doseOptions(left(DoseDisplay.possible)),
                          doseOptions(left(DoseDisplay.possible)),
                          doseOptions(left(DoseDisplay.possible)),
                          doseOptions(left(DoseDisplay.na)),
                          doseOptions(left(DoseDisplay.na)),
                        ]),
                        TableRow(decoration: _greyBoxDecoration, children: [
                          _rowName('Anti-Rotavirus', 'Rotavirus', context),
                          doseOptions(left(DoseDisplay.na)),
                          doseOptions(controller.isValid('Rotavirus', 2)),
                          doseOptions(controller.isValid('Rotavirus', 4)),
                          doseOptions(left(DoseDisplay.na)),
                          doseOptions(left(DoseDisplay.na)),
                          doseOptions(left(DoseDisplay.na)),
                        ]),
                        TableRow(decoration: _greyBoxDecoration, children: [
                          _rowName('Anti-Polio', 'Polio', context),
                          doseOptions(left(DoseDisplay.na)),
                          doseOptions(controller.isValid('Polio', 2)),
                          doseOptions(controller.isValid('Polio', 4)),
                          doseOptions(controller.isValid('Polio', 6)),
                          doseOptions(controller.isValid('Polio', 18)),
                          doseOptions(controller.isValid('Polio', 48)),
                        ]),
                        TableRow(decoration: _greyBoxDecoration, children: [
                          _rowName('Pentavalente (DPT/HB/Hib)', 'Pentavalente',
                              context),
                          doseOptions(left(DoseDisplay.na)),
                          doseOptions(controller.isValid('Pentavalente', 2)),
                          doseOptions(controller.isValid('Pentavalente', 4)),
                          doseOptions(controller.isValid('Pentavalente', 6)),
                          doseOptions(left(DoseDisplay.na)),
                          doseOptions(left(DoseDisplay.na)),
                        ]),
                        TableRow(decoration: _greyBoxDecoration, children: [
                          _rowName('Anti-Neumococo', 'Pneumococcal', context),
                          doseOptions(left(DoseDisplay.na)),
                          doseOptions(controller.isValid('Pneumococcal', 2)),
                          doseOptions(controller.isValid('Pneumococcal', 4)),
                          doseOptions(left(DoseDisplay.na)),
                          doseOptions(controller.isValid('Pneumococcal', 12)),
                          doseOptions(left(DoseDisplay.na)),
                        ]),
                        TableRow(decoration: _greyBoxDecoration, children: [
                          _rowName('Influenza', 'Influenza', context),
                          doseOptions(left(DoseDisplay.na)),
                          doseOptions(controller.isValid('Influenza', 6)),
                          doseOptions(controller.isValid('Influenza', 12)),
                          doseOptions(controller.isValid('Influenza', 24)),
                          doseOptions(controller.isValid('Influenza', 36)),
                          doseOptions(controller.isValid('Influenza', 48)),
                        ]),
                        TableRow(decoration: _greyBoxDecoration, children: [
                          _rowName('SRP', 'MMR', context),
                          doseOptions(left(DoseDisplay.na)),
                          doseOptions(controller.isValid('MMR', 12)),
                          doseOptions(left(DoseDisplay.na)),
                          doseOptions(left(DoseDisplay.na)),
                          doseOptions(left(DoseDisplay.na)),
                          doseOptions(left(DoseDisplay.na)),
                        ]),
                        TableRow(decoration: _greyBoxDecoration, children: [
                          _rowName('DPT', 'DTP', context),
                          doseOptions(left(DoseDisplay.na)),
                          doseOptions(left(DoseDisplay.possible)),
                          doseOptions(left(DoseDisplay.possible)),
                          doseOptions(left(DoseDisplay.possible)),
                          doseOptions(controller.isValid('DTP', 18)),
                          doseOptions(controller.isValid('DTP', 48)),
                        ]),
                        TableRow(
                          decoration: _greyBoxDecoration,
                          children: [
                            _rowName('SR', 'MR', context),
                            doseOptions(left(DoseDisplay.na)),
                            // controller.isValid('MR', 12),
                            doseOptions(left(DoseDisplay.possible)),
                            doseOptions(left(DoseDisplay.na)),
                            doseOptions(left(DoseDisplay.na)),
                            doseOptions(left(DoseDisplay.na)),
                            doseOptions(left(DoseDisplay.na)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: bottomAppBar,
      ),
    );
  }

  Widget _vaxDose(String dose) => TableCell(
        child: Text(
          dose,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 16),
        ),
      );

  Widget _rowName(String text, String dz, BuildContext context) {
    return FlatButton(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Get.width / 10)),
      padding: EdgeInsets.zero,
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      color: Colors.blue,
      child: Text(text, style: TextStyle(fontSize: 15)),
      onPressed: () => controller.displayDatesDialog(text, dz),
    );
  }
}
