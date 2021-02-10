import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../localization.dart';

class AddNew extends FloatingActionButton {
  AddNew(this.addNew)
      : super.extended(
          label: Text(
            _labels.actions.addNew,
            style: TextStyle(color: Get.theme.colorScheme.primary),
          ),
          elevation: 10.0,
          backgroundColor: Get.theme.colorScheme.onPrimary,
          onPressed: addNew,
          icon: Icon(
            Icons.add,
            color: Get.theme.colorScheme.primary,
          ),
        );

  final Function addNew;
}

final _labels = AppLocalizations.of(Get.context);
