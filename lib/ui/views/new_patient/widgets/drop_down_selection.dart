import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DropDownSelection extends StatelessWidget {
  const DropDownSelection({
    @required this.title,
    @required this.selectionList,
    @required this.display,
    @required this.selectNew,
    @required this.error,
  });

  final String title;
  final List<String> selectionList;
  final String display;
  final Function selectNew;
  final String error;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              title,
              style: Get.theme.textTheme.bodyText1,
            ),
            SizedBox(width: Get.width / 15),
            DropdownButton<String>(
              value: display,
              icon: Icon(Icons.keyboard_arrow_down),
              items: selectionList.map(
                (String selection) {
                  return DropdownMenuItem<String>(
                    value: selection,
                    child: Text(
                      selection,
                      style: Get.textTheme.bodyText1,
                    ),
                  );
                },
              ).toList(),
              onChanged: (newVal) => selectNew(newVal),
            ),
          ],
        ),
        Text(
          error,
          style: Get.theme.textTheme.caption
              .copyWith(color: Get.theme.colorScheme.error),
        ),
      ],
    );
  }
}
