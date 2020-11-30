import 'package:fhir/primitive_types/primitive_types.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vigor/controllers/local/patient_home/patient_home_controller.dart';

class EnterVaxDates extends StatelessWidget {
  EnterVaxDates({@required this.text, @required this.dz});

  final String text;
  final String dz;
  final PatientHomeController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Center(child: Text(text)),
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: controller.immHx()[dz].isEmpty
            ? _noPrevious
            : _getDates(controller.immHx()[dz]),
      ),
    );
  }

  static const _noPrevious = [
    Text(
      'No previous vaccines of this type given',
      style: TextStyle(fontSize: 15, color: Colors.blue),
    )
  ];

  List<Widget> _getDates(Set<FhirDateTime> listOfDates) {
    var dateList = <Widget>[
      Text(
        'Dates Given\n',
        style: TextStyle(fontSize: 20, color: Colors.blue),
      )
    ];

    for (var date in listOfDates) {
      dateList.add(Text(
        '$date',
        style: TextStyle(fontSize: 20, color: Colors.blue),
      ));
    }
    return dateList;
  }
}
