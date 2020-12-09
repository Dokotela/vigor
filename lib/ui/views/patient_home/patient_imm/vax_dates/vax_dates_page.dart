import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../_internal/utils/utils.dart';
import '../../../../../controllers/local/patient_home/patient_imm/vax_dates/vax_dates_controller.dart';

class VaxDatesPage extends StatelessWidget {
  final controller = Get.put(VaxDatesController());

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                controller.text,
                style: Get.textTheme.headline5,
              ),
            ),
            SizedBox(height: 18),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Dates Given\n',
                  style: Get.textTheme.headline6,
                ),
                Column(
                  children: [
                    Text(
                      'add new',
                      style:
                          TextStyle(color: Get.theme.colorScheme.onSecondary),
                    ),
                    Ink(
                      decoration: ShapeDecoration(
                        color: Get.theme.colorScheme.primary,
                        shape: CircleBorder(),
                      ),
                      child: IconButton(
                        color: Get.theme.colorScheme.onPrimary,
                        icon: Icon(Icons.add),
                        onPressed: () => controller.addNew(),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Container(
              height: Get.height / 2,
              child: controller.dateList.isEmpty
                  ? _noPrevious
                  : ListView.separated(
                      shrinkWrap: true,
                      padding: const EdgeInsets.all(8),
                      separatorBuilder: (BuildContext context, int index) =>
                          const Divider(),
                      itemCount: controller.dateList.length,
                      itemBuilder: (BuildContext context, int index) => Obx(
                        () => Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              dateFromDateTime(
                                  controller.dateList[index].current),
                              style: TextStyle(
                                fontSize: 20,
                                decoration: controller.isDeleted(index)
                                    ? TextDecoration.lineThrough
                                    : null,
                              ),
                            ),
                            Material(
                              elevation: 5.0,
                              borderRadius: BorderRadius.circular(64.0),
                              color: Get.theme.colorScheme.primary,
                              child: IconButton(
                                icon: Icon(Icons.edit,
                                    color: Get.theme.colorScheme.onPrimary),
                                onPressed: () => controller.isDeleted(index)
                                    ? null
                                    : showDatePicker(
                                        context: Get.context,
                                        locale: Get.locale,
                                        initialDate:
                                            controller.currentDate(index),
                                        firstDate: DateTime(1900, 1, 1),
                                        lastDate: DateTime(2999, 12, 31),
                                      ).then(
                                        (date) {
                                          controller.editDate(index, date);
                                        },
                                      ),
                              ),
                            ),
                            Material(
                              elevation: 5.0,
                              borderRadius: BorderRadius.circular(64.0),
                              color: Get.theme.colorScheme.primary,
                              child: IconButton(
                                icon: Icon(Icons.delete,
                                    color: Get.theme.colorScheme.onPrimary),
                                onPressed: () => controller.delete(index),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                FlatButton(
                  child: Text(
                    'Cancel',
                    style: TextStyle(
                      color: Get.theme.colorScheme.primary,
                    ),
                  ),
                  onPressed: () => Get.back(),
                ),
                ButtonTheme(
                  minWidth: Get.width * .4,
                  child: RaisedButton(
                    color: Get.theme.colorScheme.primary,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(Get.width / 10)),
                    onPressed: () => _showDialog(context),
                    child: Container(
                      width: Get.width * .4,
                      child: Column(
                        children: [
                          Text(
                            'Click to certify dates',
                            style: TextStyle(
                              color: Get.theme.colorScheme.onPrimary,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  static const _noPrevious = Text(
    'No previous vaccines of this type given',
    style: TextStyle(fontSize: 20, color: Colors.blue),
  );

  void _showDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Certify Dates'),
          content: Text('Are you sure you want to certify the dates?'),
          actions: [
            FlatButton(
              textColor: Color(0xFF6200EE),
              onPressed: () => Get.back(),
              child: Text('CANCEL'),
            ),
            FlatButton(
              textColor: Color(0xFF6200EE),
              onPressed: () => controller.accept(),
              child: Text('ACCEPT'),
            ),
          ],
        );
      },
    );
  }
}
