import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'vaccines_bloc/vaccines_controller.dart';

class Vaccines extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<VaccinesController>(
      init: VaccinesController(),
      builder: (controller) => Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text('Immunizations'.tr),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              FlatButton(
                shape: RoundedRectangleBorder(
                  side: const BorderSide(color: Colors.grey),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                color: Colors.transparent,
                onPressed: () => showDatePicker(
                  context: Get.context,
                  locale: Get.locale,
                  initialDate: controller.birthDateValue(),
                  firstDate: DateTime(1900, 1, 1),
                  lastDate: DateTime(2999, 12, 31),
                ).then((date) => controller.event(VaccinesEvent.enterBirthdate(
                    date ?? controller.birthDateValue()))),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text('${"Name".tr}: ${controller.name()}'),
                            Text(
                                '${"Birthdate".tr}: ${controller.birthDate()}'),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Divider(
                thickness: 4.0,
                color: Colors.blue[900],
              ),
              const Text(
                'Past Vaccines Given',
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
              Expanded(
                flex: 2,
                child: Obx(
                  () => ListView.separated(
                    itemCount: controller.numberOfRecommendations,
                    separatorBuilder: (context, index) =>
                        const Divider(color: Colors.white),
                    itemBuilder: (context, index) => Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: controller.colorByDate(index),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: Get.width / 1.5,
                            child: Text(
                              controller.vaccineType(index),
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(fontSize: 16.0),
                            ),
                          ),
                          Container(
                            width: Get.width / 4,
                            child: Text(
                              controller.vaccineDate(index),
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(fontSize: 16.0),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              RaisedButton(
                onPressed: () {},
                child: const Text('Enter New Vaccine',
                    style: TextStyle(fontSize: 20)),
              ),
              Divider(
                thickness: 4.0,
                color: Colors.blue[900],
              ),
              const Text(
                'Vaccines Due',
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
              Expanded(
                flex: 3,
                child: Obx(
                  () => ListView.separated(
                    itemCount: controller.numberOfRecommendations,
                    separatorBuilder: (context, index) =>
                        const Divider(color: Colors.white),
                    itemBuilder: (context, index) => Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: controller.colorByDate(index),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: Get.width / 1.5,
                            child: Text(
                              controller.vaccineType(index),
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(fontSize: 16.0),
                            ),
                          ),
                          Container(
                            width: Get.width / 4,
                            child: Text(
                              controller.vaccineDate(index),
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(fontSize: 16.0),
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
      ),
    );
  }
}
