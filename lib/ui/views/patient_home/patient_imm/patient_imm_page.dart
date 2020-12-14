import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vigor/ui/styled_components/styled_components.dart';

import '../../../../controllers/local/patient_home/patient_imm/patient_imm_controller.dart';
import '../../../../localization.dart';
import '../../../../ui/styled_components/app_bar.dart';
import '../../../../ui/styled_components/bottom_navigation_bar.dart';
import 'widgets/dose_options.dart';

class PatientImmPage extends StatelessWidget {
  final PatientImmController controller = Get.put(PatientImmController());

  DataColumn _heading(String title) => DataColumn(
        label: Container(
          width: Get.width / 10,
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: Get.textTheme.headline6,
          ),
        ),
      );

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
          MinInfoBanner(
            editPatient: () => controller.editPatient(),
            name: controller.name(),
            birthDate: controller.birthDate(),
          ),
          SizedBox(height: Get.height / 30),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Column(
              children: [
                Container(
                  child: FittedBox(
                    child: Obx(
                      () => controller.isReady.value
                          ? DataTable(
                              showCheckboxColumn: false,
                              horizontalMargin: 6,
                              columnSpacing: 2,
                              dividerThickness: 2,
                              dataRowHeight: Get.height / 18,
                              showBottomBorder: true,
                              columns: [
                                DataColumn(
                                  label: Container(
                                    width: Get.width / 3,
                                    child: Text(
                                      'Dosis',
                                      textAlign: TextAlign.center,
                                      style: Get.textTheme.headline6,
                                    ),
                                  ),
                                ),
                                _heading('RN'),
                                _heading('1ra'),
                                _heading('2da'),
                                _heading('3rd'),
                                _heading('1er\nRef'),
                                _heading('2da\nRef'),
                              ],
                              rows: [
                                _getRow(
                                  'Anti-BCG',
                                  'Tuberculosis',
                                  context,
                                ),
                                _getRow(
                                  'Anti-Hepatitis B',
                                  'HepB',
                                  context,
                                ),
                                _getRow(
                                  'Anti-Rotavirus',
                                  'Rotavirus',
                                  context,
                                ),
                                _getRow(
                                  'Anti-Polio',
                                  'Polio',
                                  context,
                                ),
                                _getRow(
                                  'Pentavalente\n(DPT/HB/Hib)',
                                  'Pentavalente',
                                  context,
                                ),
                                _getRow(
                                  'Anti-Neumococo',
                                  'Pneumococcal',
                                  context,
                                ),
                                _getRow(
                                  'Influenza',
                                  'Influenza',
                                  context,
                                ),
                                _getRow(
                                  'SRP',
                                  'MMR',
                                  context,
                                ),
                                _getRow(
                                  'DPT',
                                  'DTP',
                                  context,
                                ),
                                _getRow(
                                  'SR',
                                  'MR',
                                  context,
                                ),
                              ],
                            )
                          : CircularProgressIndicator(),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: bottomAppBar(),
    );
  }

  DataRow _getRow(
    String text,
    String dz,
    BuildContext context,
  ) =>
      DataRow(
        cells: _getCells(text, dz, context),
        onSelectChanged: (value) => controller.editDates(text, dz),
      );

  List<DataCell> _getCells(
    String text,
    String dz,
    BuildContext context,
  ) =>
      [
        DataCell(
          Container(
            alignment: Alignment.center,
            width: Get.width / 3,
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: Get.textTheme.headline6
                  .copyWith(fontSize: Get.height / 44, color: Colors.blue),
            ),
          ),
        ),
        DataCell(doseOptions(controller.display(dz, 0))),
        DataCell(doseOptions(controller.display(dz, 1))),
        DataCell(doseOptions(controller.display(dz, 2))),
        DataCell(doseOptions(controller.display(dz, 3))),
        DataCell(doseOptions(controller.display(dz, 4))),
        DataCell(doseOptions(controller.display(dz, 5))),
      ];
}
