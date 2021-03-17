import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OrderedList extends StatelessWidget {
  const OrderedList({
    required this.label1,
    required this.sortCol1,
    required this.order1,
    required this.entry1,
    required this.label2,
    required this.sortCol2,
    required this.order2,
    required this.entry2,
    required this.label3,
    required this.sortCol3,
    required this.order3,
    required this.entry3,
    required this.listLength,
    required this.selectEntry,
  });

  final String label1;
  final Function sortCol1;
  final Widget order1;
  final Function entry1;
  final String label2;
  final Function sortCol2;
  final Widget order2;
  final Function entry2;
  final String label3;
  final Function sortCol3;
  final Widget order3;
  final Function entry3;
  final int listLength;
  final Function selectEntry;

  @override
  Widget build(BuildContext context) {
    final _padding = EdgeInsets.fromLTRB(0, 0, 0, 0);

    Expanded _text(String text) => Expanded(
          child: Text(
            text ?? '',
            style: Get.theme.textTheme.headline6
                .copyWith(fontSize: Get.width * .04),
            // overflow: TextOverflow.,
            // softWrap: false,
          ),
        );

    return SafeArea(
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: Get.width * .35,
                child: FlatButton(
                  onPressed: () => sortCol1(),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [_text(label1), order1],
                  ),
                ),
              ),
              Container(
                width: Get.width * .30,
                child: FlatButton(
                  onPressed: () => sortCol2(),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [_text(label2), order2],
                  ),
                ),
              ),
              Container(
                width: Get.width * .22,
                child: FlatButton(
                  onPressed: () => sortCol3(),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [_text(label3), order3],
                  ),
                ),
              ),
            ],
          ),
          Divider(thickness: 3.0),
          Expanded(
            child: ListView.separated(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: listLength,
              separatorBuilder: (context, index) => Divider(
                thickness: 1.0,
                color: Get.theme.colorScheme.onPrimary,
              ),
              itemBuilder: (context, index) => FlatButton(
                onPressed: () => selectEntry(index),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      padding: _padding,
                      width: Get.width * .35,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [_text(entry1(index))],
                      ),
                    ),
                    Container(
                      padding: _padding,
                      width: Get.width * .30,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [_text(entry2(index))],
                      ),
                    ),
                    Container(
                      padding: _padding,
                      width: Get.width * .22,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [_text(entry3(index))],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
