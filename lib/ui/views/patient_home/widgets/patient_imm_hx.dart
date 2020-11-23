import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PatientImmHx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Column(
        children: [
          const SizedBox(height: 10.0),
          Table(
            defaultVerticalAlignment: TableCellVerticalAlignment.bottom,
            border: TableBorder.symmetric(
                inside: BorderSide(width: 1, color: Colors.white),
                outside: BorderSide(width: 1, color: Colors.white)),
            columnWidths: {
              0: FixedColumnWidth(Get.width / 3),
            },
            children: [
              TableRow(
                decoration: BoxDecoration(color: Colors.grey[100]),
                children: [
                  TableCell(
                      child: Text('Deworming', style: TextStyle(fontSize: 18))),
                  TableCell(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('1\n'),
                        _completed(),
                      ],
                    ),
                  ),
                  TableCell(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('2\n'),
                        _completed(),
                      ],
                    ),
                  ),
                  TableCell(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('3\n'),
                        _completed(),
                      ],
                    ),
                  ),
                  TableCell(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('4\n'),
                        _overdue(),
                      ],
                    ),
                  ),
                  TableCell(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('5\n'),
                      ],
                    ),
                  ),
                  TableCell(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('6\n'),
                      ],
                    ),
                  ),
                ],
              ),
              TableRow(
                decoration: BoxDecoration(color: Colors.grey[100]),
                children: [
                  TableCell(
                      child: Text('Doses\n', style: TextStyle(fontSize: 18))),
                  TableCell(child: Text('7\n')),
                  TableCell(child: Text('8\n')),
                  TableCell(child: Text('9\n')),
                  TableCell(child: Text('10\n')),
                  TableCell(child: Text('11\n')),
                  TableCell(child: Text('12\n')),
                ],
              ),
            ],
          ),
          const SizedBox(height: 10.0),
          Table(
            defaultVerticalAlignment: TableCellVerticalAlignment.bottom,
            border: TableBorder.symmetric(
                inside: BorderSide(width: 1, color: Colors.white),
                outside: BorderSide(width: 1, color: Colors.white)),
            columnWidths: {
              0: FixedColumnWidth(Get.width / 3),
            },
            children: [
              TableRow(
                decoration: BoxDecoration(color: Colors.grey[100]),
                children: [
                  TableCell(child: Text('')),
                  TableCell(
                      child: Text('Dosis RN', style: TextStyle(fontSize: 16))),
                  TableCell(
                      child: Text('1ra Dosis', style: TextStyle(fontSize: 16))),
                  TableCell(
                      child: Text('2da Dosis', style: TextStyle(fontSize: 16))),
                  TableCell(
                      child: Text('3rd Dosis', style: TextStyle(fontSize: 16))),
                  TableCell(
                      child: Text('1er Ref', style: TextStyle(fontSize: 16))),
                  TableCell(
                      child: Text('2da Ref', style: TextStyle(fontSize: 16))),
                ],
              ),
              TableRow(
                decoration: BoxDecoration(color: Colors.grey[100]),
                children: _getContainers('Anti-BCG\n', [
                  Colors.green,
                  Colors.black,
                  Colors.black,
                  Colors.black,
                  Colors.black,
                  Colors.black
                ]),
              ),
              TableRow(
                  decoration: BoxDecoration(color: Colors.grey[100]),
                  children: _getContainers('Anti-Hepatitis B\n', [
                    Colors.green,
                    Colors.black,
                    Colors.black,
                    Colors.black,
                    Colors.black,
                    Colors.black
                  ])),
              TableRow(
                  decoration: BoxDecoration(color: Colors.grey[100]),
                  children: _getContainers('Anti-Rotavirus\n', [
                    Colors.black,
                    Colors.green,
                    Colors.green,
                    Colors.black,
                    Colors.black,
                    Colors.black
                  ])),
              TableRow(
                  decoration: BoxDecoration(color: Colors.grey[100]),
                  children: _getContainers('Anti-Polio\n', [
                    Colors.black,
                    Colors.green,
                    Colors.red,
                    Colors.grey[100],
                    Colors.grey[100],
                    Colors.grey[100]
                  ])),
              TableRow(
                  decoration: BoxDecoration(color: Colors.grey[100]),
                  children: _getContainers('Pentavalente (DPT/HB/Hib)', [
                    Colors.black,
                    Colors.green,
                    Colors.red,
                    Colors.yellow,
                    Colors.black,
                    Colors.black
                  ])),
              TableRow(
                  decoration: BoxDecoration(color: Colors.grey[100]),
                  children: _getContainers('Anti-Neumococo', [
                    Colors.black,
                    Colors.green,
                    Colors.red,
                    Colors.yellow,
                    Colors.grey[100],
                    Colors.black
                  ])),
              TableRow(
                  decoration: BoxDecoration(color: Colors.grey[100]),
                  children: _getContainers('SRP\n', [
                    Colors.black,
                    Colors.green,
                    Colors.black,
                    Colors.black,
                    Colors.black,
                    Colors.black
                  ])),
              TableRow(
                  decoration: BoxDecoration(color: Colors.grey[100]),
                  children: _getContainers('DPT\n', [
                    Colors.black,
                    Colors.black,
                    Colors.black,
                    Colors.black,
                    Colors.grey[100],
                    Colors.grey[100]
                  ])),
            ],
          ),
        ],
      ),
    );
  }
}

List<Widget> _getContainers(String text, List<dynamic> color) {
  var cont = <Widget>[
    TableCell(
      verticalAlignment: TableCellVerticalAlignment.middle,
      child: Container(
        color: Colors.grey[100],
        child: Text(text, style: TextStyle(fontSize: 18)),
      ),
    )
  ];
  for (var i in color) {
    if (i == Colors.black || i == Colors.grey[100]) {
      cont.add(_nothing(i));
    } else if (i == Colors.green) {
      cont.add(TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: _completed()));
    } else if (i == Colors.red) {
      cont.add(TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: _overdue()));
    } else if (i == Colors.yellow) {
      cont.add(TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle, child: _due()));
    }
  }
  return cont;
}

Widget _nothing(Color newColor) => TableCell(
      child: Container(
        color: newColor,
        child: Text('\n'),
      ),
    );

Widget _due() => Container(
      color: Colors.orange,
      child: Icon(Icons.access_alarm, color: Colors.orange, size: 24),
    );

Widget _completed() => Container(
      color: Colors.grey[100],
      child: Icon(Icons.check_circle, color: Colors.green, size: 24),
    );

Widget _overdue() => Container(
      color: Colors.grey[100],
      child: Icon(Icons.warning, color: Colors.red, size: 24),
    );
