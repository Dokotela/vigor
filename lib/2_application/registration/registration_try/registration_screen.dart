import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'registration_controller.dart';

class RegistrationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<RegistrationController>(
        init: RegistrationController(),
        builder: (controller) => Scaffold(
                body: Column(children: [
              Text(controller.text1),
              Text(controller.text2),
              Text(controller.text3),
              RaisedButton(
                  onPressed: () =>
                      controller.event(RegistrationEvent.text1('Text1'))),
              RaisedButton(
                  onPressed: () =>
                      controller.event(RegistrationEvent.text2('Text2'))),
              RaisedButton(
                  onPressed: () =>
                      controller.event(RegistrationEvent.text3('Text3')))
            ])));
  }
}
