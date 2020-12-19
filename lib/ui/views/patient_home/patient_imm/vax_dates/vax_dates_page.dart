import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vigor/ui/styled_components/add_new.dart';
import 'package:vigor/ui/styled_components/styled_components.dart';

import '../../../../../controllers/local/patient_home/vax_dates_controller.dart';

class VaxDatesPage extends StatelessWidget {
  final controller = Get.put(VaxDatesController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: VigorAppBar(title: controller.text),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 4.0),
            MinInfoBanner(
              name: controller.controller.name(),
              birthDate: controller.controller.birthDate(),
            ),
            Container(
              height: Get.height / 2,
              child: Obx(
                () => controller.immList.isEmpty
                    ? _noPrevious
                    : ListView.separated(
                        shrinkWrap: true,
                        padding: const EdgeInsets.all(8),
                        separatorBuilder: (BuildContext context, int index) =>
                            const Divider(),
                        itemCount: controller.immList.length,
                        itemBuilder: (BuildContext context, int index) => Obx(
                          () => Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                controller.dateString(index),
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                              Material(
                                elevation: 5.0,
                                borderRadius: BorderRadius.circular(64.0),
                                color: Get.theme.colorScheme.primary,
                                child: IconButton(
                                  icon: Icon(Icons.edit,
                                      color: Get.theme.colorScheme.onPrimary),
                                  onPressed: () => showMyDatePicker(
                                      initialDate:
                                          controller.currentDate(index),
                                      function: controller.editDate,
                                      index: index),
                                ),
                              ),
                              Material(
                                elevation: 5.0,
                                borderRadius: BorderRadius.circular(64.0),
                                color: Get.theme.colorScheme.primary,
                                child: IconButton(
                                  icon: Icon(Icons.delete,
                                      color: Get.theme.colorScheme.onPrimary),
                                  onPressed: () => Get.dialog(delete(index)),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: AddNew(() async => await controller.addNew()),
      bottomNavigationBar: bottomAppBar(backFunction: Get.back),
    );
  }

  Widget delete(int index) => AlertDialog(
        title: Text('Delete Immunization'),
        content: Text('Are you sure you want to delete this immunization?'),
        actions: [
          TextButton(
            child: Text(
              'Cancel',
              style: TextStyle(color: Get.theme.colorScheme.onPrimary),
            ),
            onPressed: () => Get.back(),
          ),
          TextButton(
            child: Text(
              'Delete',
              style: TextStyle(color: Get.theme.colorScheme.onPrimary),
            ),
            onPressed: () async => await controller.delete(index),
          ),
        ],
      );

  static const _noPrevious = Text(
    'No previous vaccines of this type given',
    style: TextStyle(fontSize: 20, color: Colors.blue),
  );
}
