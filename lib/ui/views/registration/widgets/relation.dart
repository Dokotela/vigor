import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class RelationWidget extends StatelessWidget {
  const RelationWidget({
    @required this.relationList,
    @required this.displayRelation,
    @required this.setRelation,
    @required this.dispRelationError,
  });

  final List<String> relationList;
  final String displayRelation;
  final Function setRelation;
  final String dispRelationError;

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
                items: relationList.map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(
                      value.tr,
                    ),
                  );
                }).toList(),
                hint: Text(
                  displayRelation,
                  style: Get.textTheme.headline6,
                ),
                onChanged: (newVal) => setRelation(newVal)),
          ),
          Text(
            dispRelationError,
            style: const TextStyle(fontSize: 12.0, color: Colors.red),
          ),
        ],
      ),
    );
  }
}
