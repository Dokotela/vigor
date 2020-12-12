import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../../../../localization.dart';

class BarrioWidget extends StatelessWidget {
  const BarrioWidget({
    @required this.barriosList,
    @required this.displayBarrio,
    @required this.setBarrio,
    @required this.dispBarrioError,
  });

  final List<String> barriosList;
  final String displayBarrio;
  final Function setBarrio;
  final String dispBarrioError;

  @override
  Widget build(Object context) {
    final labels = AppLocalizations.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              labels.general.address.neighborhood,
              style: Get.textTheme.bodyText1,
            ),
            SizedBox(width: Get.width / 15),
            DropdownButton<String>(
                value: displayBarrio,
                icon: Icon(Icons.keyboard_arrow_down),
                items: barriosList.map((String barrio) {
                  return DropdownMenuItem<String>(
                    value: barrio,
                    child: Text(
                      barrio,
                      style: Get.textTheme.bodyText1,
                    ),
                  );
                }).toList(),
                onChanged: (newVal) => setBarrio(newVal)),
          ],
        ),
        Text(
          dispBarrioError,
          style: const TextStyle(fontSize: 12.0, color: Colors.red),
        ),
      ],
    );
  }
}
