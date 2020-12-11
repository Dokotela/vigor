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
    this.eventType,
  });

  final List<String> barriosList;
  final String displayBarrio;
  final Function setBarrio;
  final String dispBarrioError;
  final dynamic eventType;

  @override
  Widget build(Object context) {
    final labels = AppLocalizations.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          labels.general.address.neighborhood,
          style: Get.textTheme.headline6,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(width: Get.width / 15),
            DropdownButton<String>(
                value: displayBarrio,
                icon: Icon(Icons.keyboard_arrow_down),
                items: barriosList.map((String barrio) {
                  return DropdownMenuItem<String>(
                    value: barrio,
                    child: Text(
                      barrio,
                      style: Get.textTheme.headline6,
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
