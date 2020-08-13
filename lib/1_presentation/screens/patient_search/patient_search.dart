import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vigor/1_presentation/screens/screens.dart';
import 'package:vigor/1_presentation/shared_widgets/shared_widgets.dart';
import 'package:vigor/2_application/patient_search/patient_search_controller.dart';

import 'patient_search_button_controller.dart';

class PatientSearch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<PatientSearchController>(
      init: PatientSearchController(),
      builder: (controller) => Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text('title'.tr),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Row(
                children: [
                  Flexible(
                    flex: 20,
                    child: TextFormField(
                      controller: controller.searchName,
                      decoration: InputDecoration(
                        hintText: 'Search Name'.tr,
                      ),
                    ),
                  ),
                  const Spacer(),
                  Container(
                    height: 60.0,
                    width: 130.0,
                    child: RaisedButton(
                      color: Colors.grey,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      onPressed: () => Get.to(PatientRegistration()),
                      child: Text(
                        'Register New Patient'.tr,
                        textAlign: TextAlign.center,
                        style: const TextStyle(fontSize: 18.0),
                      ),
                    ),
                  ),
                ],
              ),
              Divider(
                thickness: 4.0,
                color: Colors.blue[900],
              ),
              GetBuilder<PatientSearchButtonController>(
                init: PatientSearchButtonController(),
                builder: (_) => Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('Filter'.tr, style: const TextStyle(fontSize: 30.0)),
                    RaisedButton(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(color: Colors.blue[600]),
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        color: _.color1,
                        onPressed: () => _.switchColor1(),
                        child: const Text('Deworming')),
                    RaisedButton(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(color: Colors.blue[600]),
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        color: _.color2,
                        onPressed: () => _.switchColor2(),
                        child: const Text('Vaccines')),
                  ],
                ),
              ),
              Divider(
                thickness: 4.0,
                color: Colors.blue[900],
              ),
              Row(
                children: [
                  const Text('Name'),
                  const Text('Age'),
                  const Text('Barrio'),
                ],
              ),
              Expanded(
                child: ListView.builder(
                  padding: const EdgeInsets.all(8),
                  itemCount: controller.patientList.length,
                  itemBuilder: (context, index) {
                    return Text(
                        controller.patientList[index].toJson().toString());
                  },
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: bottomAppBar,
      ),
    );
  }
}
