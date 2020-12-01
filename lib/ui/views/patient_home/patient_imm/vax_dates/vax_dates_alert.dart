import 'package:fhir/primitive_types/primitive_types.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../controllers/local/patient_home/patient_home_controller.dart';
import '../../../../../routes/routes.dart';
import '../widgets/vax_calendar.dart';
import 'vax_dates_view_controller.dart';

class VaxDatesAlert extends StatelessWidget {
  final PatientHomeController controller = Get.find();
  final VaxDatesViewController viewController =
      Get.put(VaxDatesViewController());

  @override
  Widget build(BuildContext context) {
    viewController.setList = controller.immHx()[viewController.dz];
    return Obx(() => AlertDialog(
          title: Center(child: Text(viewController.text.value)),
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: controller.immHx()[viewController.dz].isEmpty
                ? _noPrevious
                : _getDates(viewController.dateList, context),
          ),
        ));
  }

  static const _noPrevious = [
    Text(
      'No previous vaccines of this type given',
      style: TextStyle(fontSize: 20, color: Colors.blue),
    )
  ];

  List<Widget> _getDates(List<FhirDateTime> listOfDates, BuildContext context) {
    var dateList = <Widget>[
      Text(
        'Dates Given\n',
        style: TextStyle(fontSize: 20, color: Colors.blue),
      )
    ];

    for (var date in listOfDates) {
      dateList.add(Row(
        children: [
          Obx(() => Text(
                date.toString(),
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.blue,
                  decoration:
                      viewController.deleteList[listOfDates.indexOf(date)]
                          ? TextDecoration.lineThrough
                          : null,
                ),
              )),
          Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(64.0),
            color: Colors.blue[600],
            child: MaterialButton(
              onPressed: () => null,
              child: Text('Edit'),
            ),
          ),
          Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(64.0),
            color: Colors.blue[600],
            child: MaterialButton(
              onPressed: () => viewController.delete(listOfDates.indexOf(date)),
              child: Text('Delete'),
            ),
          ),
        ],
      ));
      dateList.add(SizedBox(height: 16));
    }
    dateList.add(SizedBox(height: 24));
    dateList.add(VaxCalendarWidget(
      selectNewDate: viewController.recordNew,
      addNewDate: controller.recordNew,
      currentDate: viewController.currentDate,
      displayDate: viewController.dateString,
      disease: viewController.dz.value,
    ));
    dateList.add(SizedBox(height: 32));
    dateList.add(
      Material(
        elevation: 5.0,
        borderRadius: BorderRadius.circular(64.0),
        color: Colors.blue[600],
        child: MaterialButton(
          minWidth: Get.width,
          onPressed: () => _showDialog(context),
          child: Text('Click to certify dates'),
        ),
      ),
    );
    return dateList;
  }

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
                onPressed: () => Get.toNamed(AppRoutes.PATIENT_HOME,
                    arguments: controller.actualPatient().patient),
                child: Text('ACCEPT'),
              ),
            ],
          );
        });
  }
}
