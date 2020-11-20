import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PatientImmHx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Table(
          defaultVerticalAlignment: TableCellVerticalAlignment.bottom,
          border: TableBorder.symmetric(
              inside: BorderSide(width: 1, color: Colors.black),
              outside: BorderSide(width: 1)),
          columnWidths: {
            0: FixedColumnWidth(Get.width / 4),
          },
          children: [
            TableRow(
              children: [
                TableCell(child: Text('Deworming')),
                TableCell(child: Text('1')),
                TableCell(child: Text('2')),
                TableCell(child: Text('3')),
                TableCell(child: Text('4')),
                TableCell(child: Text('5')),
                TableCell(child: Text('6')),
              ],
            ),
            TableRow(
              decoration: BoxDecoration(color: Colors.grey[100]),
              children: _getContainers('', [
                Colors.green,
                Colors.green,
                Colors.green,
                Colors.green,
                Colors.red,
                Colors.grey[100]
              ]),
            ),
            TableRow(
              children: [
                TableCell(child: Text('Doses')),
                TableCell(child: Text('7')),
                TableCell(child: Text('8')),
                TableCell(child: Text('9')),
                TableCell(child: Text('10')),
                TableCell(child: Text('11')),
                TableCell(child: Text('12')),
              ],
            ),
            TableRow(
              decoration: BoxDecoration(color: Colors.grey[100]),
              children: _getContainers('', [
                Colors.grey[100],
                Colors.grey[100],
                Colors.grey[100],
                Colors.grey[100],
                Colors.grey[100],
                Colors.grey[100]
              ]),
            ),
          ],
        ),
        const SizedBox(height: 6.0),
        Table(
          defaultVerticalAlignment: TableCellVerticalAlignment.bottom,
          border: TableBorder.symmetric(
              inside: BorderSide(width: 1, color: Colors.black),
              outside: BorderSide(width: 1)),
          columnWidths: {
            0: FixedColumnWidth(Get.width / 4),
          },
          children: [
            TableRow(
              children: [
                TableCell(child: Text('')),
                TableCell(child: Text('Dosis RN')),
                TableCell(child: Text('1ra Dosis')),
                TableCell(child: Text('2da Dosis')),
                TableCell(child: Text('3rd Dosis')),
                TableCell(child: Text('1er Ref')),
                TableCell(child: Text('2da Ref')),
              ],
            ),
            TableRow(
              decoration: BoxDecoration(color: Colors.black),
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
                decoration: BoxDecoration(color: Colors.black),
                children: _getContainers('Anti-Hepatitis B\n', [
                  Colors.green,
                  Colors.black,
                  Colors.black,
                  Colors.black,
                  Colors.black,
                  Colors.black
                ])),
            TableRow(
                decoration: BoxDecoration(color: Colors.black),
                children: _getContainers('Anti-Rotavirus\n', [
                  Colors.black,
                  Colors.green,
                  Colors.green,
                  Colors.black,
                  Colors.black,
                  Colors.black
                ])),
            TableRow(
                decoration: BoxDecoration(color: Colors.black),
                children: _getContainers('Anti-Polio\n', [
                  Colors.black,
                  Colors.green,
                  Colors.red,
                  Colors.grey[100],
                  Colors.grey[100],
                  Colors.grey[100]
                ])),
            TableRow(
                decoration: BoxDecoration(color: Colors.black),
                children: _getContainers('Pentavalente (DPT/HB/Hib)', [
                  Colors.black,
                  Colors.green,
                  Colors.red,
                  Colors.grey[100],
                  Colors.black,
                  Colors.black
                ])),
            TableRow(
                decoration: BoxDecoration(color: Colors.black),
                children: _getContainers('Anti-Neumococo', [
                  Colors.black,
                  Colors.green,
                  Colors.red,
                  Colors.grey[100],
                  Colors.grey[100],
                  Colors.black
                ])),
            TableRow(
                decoration: BoxDecoration(color: Colors.black),
                children: _getContainers('SRP\n', [
                  Colors.black,
                  Colors.green,
                  Colors.black,
                  Colors.black,
                  Colors.black,
                  Colors.black
                ])),
            TableRow(
                decoration: BoxDecoration(color: Colors.black),
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
    );
  }
}

List<Widget> _getContainers(String text, List<dynamic> color) {
  var cont = <Widget>[
    TableCell(
      child: Container(
        color: Colors.grey[100],
        child: Text(text),
      ),
    )
  ];
  for (var i in color) {
    if (i == Colors.black || i == Colors.grey[100]) {
      cont.add(
        Container(
          color: i,
          child: Text('\n'),
        ),
      );
    } else if (i == Colors.green) {
      cont.add(
        Container(
          color: i,
          child: Icon(Icons.check, size: 30),
        ),
      );
    } else if (i == Colors.red) {
      cont.add(
        Container(
          color: i,
          child: Text('!',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25, color: Colors.yellow)),
        ),
      );
    }
  }
  return cont;
}
