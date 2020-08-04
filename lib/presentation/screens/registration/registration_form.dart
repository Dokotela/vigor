import 'package:flutter/material.dart';

class RegistrationForm extends StatefulWidget {
  @override
  _RegistrationFormState createState() => _RegistrationFormState();
}

class _RegistrationFormState extends State<RegistrationForm> {
  var givenNameController = TextEditingController();
  var familyNameController = TextEditingController();
  DateTime _birthDate = DateTime.now();
  String sexAtBirth;
  String response = '';
  String barrio = 'Escoje Barrio';

  @override
  void dispose() {
    givenNameController.dispose();
    familyNameController.dispose();
    super.dispose();
  }

  //select birthdate async function
  Future _selectDate() async {
    DateTime picked = await showDatePicker(
        context: context,
        initialDate: new DateTime.now(),
        firstDate: new DateTime(2016),
        lastDate: new DateTime.now());
    if (picked != null) setState(() => _birthDate = picked);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register Patient'),
      ),
      body: new Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          new TextField(
            decoration: new InputDecoration(hintText: 'Given Names'),
            controller: givenNameController,
          ),

          new TextField(
            decoration: new InputDecoration(hintText: 'Family Names'),
            controller: familyNameController,
          ),

          new Column(
            children: <Widget>[
              new Row(
                children: <Widget>[
                  new Text(' Sex at birth'),
                  Radio(
                    value: 'female',
                    groupValue: sexAtBirth,
                    onChanged: (String value) {
                      setState(() => sexAtBirth = value);
                    },
                  ),
                  Text('female'),
                  Radio(
                    value: 'male',
                    groupValue: sexAtBirth,
                    onChanged: (String value) {
                      setState(() => sexAtBirth = value);
                    },
                  ),
                  Text('male'),
                ],
              ),
              const Divider(
                color: Colors.black54,
                thickness: 1,
              ),
            ],
          ),

          //Calls above function to select birthdate
          new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              FlatButton(
                onPressed: _selectDate,
                child: Text(
                  'Date of Birth     '
                  '${_birthDate.month}-${_birthDate.day}-${_birthDate.year}',
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 15,
                  ),
                ),
              ),
              const Divider(
                color: Colors.black54,
                thickness: 1,
              ),
            ],
          ),

          new Column(
            children: <Widget>[
              new Row(
                children: <Widget>[
                  Text(
                    'Barrio     ',
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 15,
                    ),
                  ),
                  DropdownButton<String>(
                    items: <String>[
                      'Filiu',
                      'La 41',
                      'Carretera',
                      'Villa_Verde',
                      'Cachipero',
                      'Puerto_Rico',
                      'Kilombo'
                    ].map((String value) {
                      return new DropdownMenuItem<String>(
                        value: value,
                        child: new Text(value),
                      );
                    }).toList(),
                    hint: Text(barrio),
                    onChanged: (newVal) {
                      setState(() => barrio = newVal);
                    },
                  ),
                ],
              ),
              const Divider(
                color: Colors.black54,
                thickness: 1,
              ),
            ],
          ),

          Expanded(
            flex: 1,
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                // RaisedButton(
                //   onPressed: () async {
                //     Patient pt = await Patient.newInstance(address: [
                //       await Address.newInstance(district: barrio)
                //     ], name: [
                //       await HumanName.newInstance(
                //           given: [givenNameController.text],
                //           family: familyNameController.text)
                //     ], birthDate: _birthDate.toString());
                //     Navigator.push(
                //       context,
                //       MaterialPageRoute(
                //           builder: (context) => RegisterFamily(
                //                 pt: pt,
                //               )),
                //     );
                //   },
                //   child: Text('Press to Create Patient'),
                // ),
                RaisedButton(
                  onPressed: () {
//                              Navigator.push(
//                                context,
//                                MaterialPageRoute(
//                                    builder: (context) => MainMenu()),
//                              );
                  },
                  child: const Text('Return to Opening Page'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
