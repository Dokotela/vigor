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
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Column(
              children: [
                Container(
                  child: FutureBuilder(
                    future: controller.createDisplay(),
                    builder: (BuildContext context, AsyncSnapshot snapshot) {
                      if (snapshot.hasData) {
                        return Table(
                          defaultVerticalAlignment:
                              TableCellVerticalAlignment.bottom,
                          border: TableBorder.symmetric(
                              inside: BorderSide(width: 1, color: Colors.white),
                              outside:
                                  BorderSide(width: 1, color: Colors.white)),
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
                            TableRow(
                                decoration: _greyBoxDecoration,
                                children: _getRow(
                                    'Anti-BCG', 'Tuberculosis', context)),
                            TableRow(
                                decoration: _greyBoxDecoration,
                                children: _getRow(
                                    'Anti-Hepatitis B', 'HepB', context)),
                            TableRow(
                                decoration: _greyBoxDecoration,
                                children: _getRow(
                                    'Anti-Rotavirus', 'Rotavirus', context)),
                            TableRow(
                              decoration: _greyBoxDecoration,
                              children: _getRow('Anti-Polio', 'Polio', context),
                            ),
                            TableRow(
                                decoration: _greyBoxDecoration,
                                children: _getRow('Pentavalente (DPT/HB/Hib)',
                                    'Pentavalente', context)),
                            TableRow(
                                decoration: _greyBoxDecoration,
                                children: _getRow(
                                    'Anti-Neumococo', 'Pneumococcal', context)),
                            TableRow(
                                decoration: _greyBoxDecoration,
                                children:
                                    _getRow('Influenza', 'Influenza', context)),
                            TableRow(
                                decoration: _greyBoxDecoration,
                                children: _getRow('SRP', 'MMR', context)),
                            TableRow(
                                decoration: _greyBoxDecoration,
                                children: _getRow('DPT', 'DTP', context)),
                            TableRow(
                                decoration: _greyBoxDecoration,
                                children: _getRow('SR', 'MR', context)),
                          ],
                        );
                      } else {
                        return CircularProgressIndicator();
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: bottomAppBar,
    );
  }

  List<Widget> _getRow(String text, String dz, BuildContext context) => [
        RaisedButton(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(Get.width / 10)),
          padding: EdgeInsets.zero,
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          color: Get.theme.colorScheme.surface,
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: Get.textTheme.bodyText1,
          ),
          onPressed: () => controller.displayDatesDialog(text, dz),
        ),
        doseOptions(controller.display(dz, 0)),
        doseOptions(controller.display(dz, 1)),
        doseOptions(controller.display(dz, 2)),
        doseOptions(controller.display(dz, 3)),
        doseOptions(controller.display(dz, 4)),
        doseOptions(controller.display(dz, 5)),
      ];

  Widget _vaxDose(String dose) => TableCell(
        child: Text(
          dose,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 16),
        ),
      );
}
