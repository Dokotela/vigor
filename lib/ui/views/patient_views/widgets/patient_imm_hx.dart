import 'package:flutter/material.dart';

class PatientImmHx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    _getDiseases();
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ListView(
        children: _getDiseases(),
      ),
    );
  }
}

List<Widget> _getDiseases() {
  var rowList = <Widget>[];
  var _thisText = TextStyle(fontSize: 20.0);

  for (var dz in _diseaseList) {
    rowList.add(
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Text(dz,
                  style:
                      TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold))),
          Wrap(
            children: [
              Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.blue),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Text('2020-01-01', style: _thisText)),
              Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.blue),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Text('2020-02-01', style: _thisText)),
              Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.blue),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Text('2020-03-01', style: _thisText)),
              Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.blue),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Text('2020-04-01', style: _thisText)),
              Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.blue),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Text('2020-05-01', style: _thisText)),
              Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.blue),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Text('2020-06-01', style: _thisText)),
              Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.blue),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Text('2020-07-01', style: _thisText)),
              Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.blue),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Text('2020-08-01', style: _thisText)),
            ],
          ),
          const SizedBox(height: 16.0)
        ],
      ),
    );
  }

  return rowList;
}

const _diseaseList = [
  'Deworming',
  'Anti-BCG',
  'Hepatitis-B',
  'Anti-Rotavirus',
  'Anti-Polio',
  'Pentavalente (DPT/HB/Hib)',
  'Anti-Neumococo',
  'SRP',
  'DPT',
  'SR',
];
