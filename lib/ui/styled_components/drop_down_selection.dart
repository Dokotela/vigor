import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DropDownSelection extends StatelessWidget {
  const DropDownSelection({
    required this.title,
    required this.selectionList,
    required this.display,
    required this.selectNew,
    required this.error,
  });

  final String title;
  final List<String> selectionList;
  final String display;
  final Function selectNew;
  final String error;

  @override
  Widget build(BuildContext context) {
    var newList = selectionList.toList();
    newList.insert(0, '');
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              width: Get.width * 0.38,
              child: Text(
                title,
                style: Get.theme!.textTheme.bodyText1!
                    .copyWith(fontSize: Get.width * .05),
              ),
            ),
            DropdownButton<String>(
              value: display,
              icon: Icon(Icons.keyboard_arrow_down),
              items: newList.map(
                (String selection) {
                  return DropdownMenuItem<String>(
                    value: selection,
                    child: Text(selection),
                  );
                },
              ).toList(),
              onChanged: (newVal) =>
                  newVal != null && newVal != '' ? selectNew(newVal) : null,
            ),
          ],
        ),
        Text(
          error,
          style: Get.theme!.textTheme.caption!
              .copyWith(color: Get.theme!.colorScheme.error),
        ),
      ],
    );
  }
}
