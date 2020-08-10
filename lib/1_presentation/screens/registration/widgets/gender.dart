import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vigor/1_presentation/themes/themes.dart';

class GenderSelectionWidget extends StatelessWidget {
  const GenderSelectionWidget({
    @required this.curGender,
    @required this.setFemaleGender,
    @required this.setMaleGender,
  });

  final String curGender;
  final Function setFemaleGender;
  final Function setMaleGender;

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
                style: ThemeClass.dark().textTheme.headline5,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Radio(
                value: 'female',
                groupValue: curGender,
                onChanged: (String _) => setFemaleGender(),
              ),
              Text('female'.tr, style: ThemeClass.dark().textTheme.headline5),
              Radio(
                value: 'male',
                groupValue: curGender,
                onChanged: (String _) => setMaleGender(),
              ),
              Text('male'.tr, style: ThemeClass.dark().textTheme.headline5),
            ],
          ),
        ],
      ),
    );
  }
}
