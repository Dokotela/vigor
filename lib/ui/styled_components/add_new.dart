import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddNew extends FloatingActionButton {
  AddNew(this.addNew)
      : super.extended(
          label: Text(
            'Add New',
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
