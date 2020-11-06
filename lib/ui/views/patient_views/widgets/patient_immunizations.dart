import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PatientImmunizations extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<PatientImmunizationsController>(
      init: PatientImmunizationsController(),
      builder: (controller) => Padding(
        padding: const EdgeInsets.all(10.0),
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
                    width: Get.width / 3,
                    child: Text(
                      controller.vaccineType(index),
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(fontSize: 16.0),
                    ),
                  ),
                  Container(
                    width: Get.width / 3,
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
    );
  }
}
