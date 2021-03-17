import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future showMyDatePicker(
        {required DateTime initialDate,
        required Function function,
        int? index}) =>
    showDatePicker(
        context: Get.context!,
        locale: Get.locale,
        initialDate: initialDate,
        firstDate: DateTime(1900, 1, 1),
        lastDate: DateTime(2999, 12, 31),
        builder: (BuildContext context, child) {
          return Theme(
            data: Get.theme!.copyWith(
              colorScheme: Get.theme!.colorScheme.copyWith(
                  primary: Get.theme!.colorScheme.onPrimary,
                  onPrimary: Get.theme!.colorScheme.primary),
            ),
            child: child ?? Container(),
          );
        }).then(
      (date) => index == null ? function(date) : function(index, date),
    );
