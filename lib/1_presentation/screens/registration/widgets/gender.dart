import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vigor/1_presentation/theme/theme.dart';

class GenderSelectionWidget extends StatelessWidget {
  const GenderSelectionWidget({
    @required this.curGender,
    @required this.setGender,
  });

  final String curGender;
  final Function setGender;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Sex at birth'.tr,
                style: Get.theme.textTheme.headline5,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Radio(
                value: 'female',
                groupValue: curGender,
                onChanged: (String gender) => setGender(gender),
              ),
              Text('female'.tr, style: Get.theme.textTheme.headline5),
              Radio(
                value: 'male',
                groupValue: curGender,
                onChanged: (String gender) => setGender(gender),
              ),
              Text('male'.tr, style: Get.theme.textTheme.headline5),
            ],
          ),
        ],
      ),
    );
  }
}
