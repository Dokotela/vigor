import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

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
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Column(
        children: <Widget>[
          DropdownButtonHideUnderline(
            child: DropdownButton<String>(
                items: barriosList.map((String barrio) {
                  return DropdownMenuItem<String>(
                    value: barrio,
                    child: Text(barrio),
                  );
                }).toList(),
                hint: Text(
                  displayBarrio.tr,
                ),
                onChanged: (newVal) => setBarrio(newVal)),
          ),
          Text(
            dispBarrioError.tr,
            style: const TextStyle(fontSize: 12.0, color: Colors.red),
          ),
        ],
      ),
    );
  }
}
