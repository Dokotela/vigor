import 'dart:convert';
import 'dart:io';
import 'dart:math';

import 'package:fhir/r4.dart';

Future main() async {
  final newBundle = Bundle(
    type: BundleType.transaction,
    entry: <BundleEntry>[],
  );
  final file = File('./test/dr_pats.csv');
  final inputStream = file.openRead();

  inputStream.transform(utf8.decoder).transform(const LineSplitter()).listen(
    (String line) {
      final row = line.split(',');

      if (row[1] == '') {
        final patient = Patient(
          name: [_getName()],
          id: Id(row[0]),
          birthDate: Date(row[5]),
          address: [Address(district: row[8].replaceAll('\"', ''))],
          gender: row[7] == 'Male' ? PatientGender.male : PatientGender.female,
        );
        newBundle.entry.add(BundleEntry(
            resource: patient,
            request: BundleRequest(
              method: BundleRequestMethod.post,
              url: FhirUri('Patient'),
            )));
        for (var i = 27; i < 197; i += 10) {
          if (row[i] != '') {
            final newImmunization = Immunization(
              status: Code('completed'),
              occurrenceDateTime: FhirDateTime(row[i]),
              patient: Reference(reference: 'Patient/${patient.id.toString()}'),
              vaccineCode: vaxCode(i),
            );
            newBundle.entry.add(BundleEntry(
                resource: newImmunization,
                request: BundleRequest(
                  method: BundleRequestMethod.post,
                  url: FhirUri('Immunization'),
                )));
          }
        }
      }
    },
    onDone: () async => await File('./test/list.json')
        .writeAsString(json.encode(newBundle.toJson())),
  );
}

CodeableConcept vaxCode(int i) {
  switch (i) {
    case 27:
      return byNum('19', 'BCG');
    case 37:
      return byNum('45', 'Hep B, unspecified formulation');
    case 47:
      return byNum('122', 'rotavirus, unspecified formulation');
    case 57:
      return byNum('122', 'rotavirus, unspecified formulation');
    case 67:
      return byNum('10', 'IPV');
    case 77:
      return byNum('10', 'IPV');
    case 87:
      return byNum('10', 'IPV');
    case 97:
      return byNum('10', 'IPV');
    case 107:
      return byNum('10', 'IPV');
    case 117:
      return byNum('198', 'DTP-hepB-Hib Pentavalent Non-US');
    case 127:
      return byNum('198', 'DTP-hepB-Hib Pentavalent Non-US');
    case 137:
      return byNum('198', 'DTP-hepB-Hib Pentavalent Non-US');
    case 147:
      return byNum('109', 'pneumococcal, unspecified formulation');
    case 157:
      return byNum('109', 'pneumococcal, unspecified formulation');
    case 167:
      return byNum('109', 'pneumococcal, unspecified formulation');
    case 177:
      return byNum('03', 'MMR');
    case 187:
      return byNum('107', 'DTaP, unspecified formulation');
    case 197:
      return byNum('107', 'DTaP, unspecified formulation');
    default:
      return null;
  }
}

CodeableConcept byNum(String cvx, String display) => CodeableConcept(
      coding: [
        Coding(
          system: FhirUri('http://hl7.org/fhir/sid/cvx'),
          code: Code(cvx),
          display: display,
        ),
      ],
    );

HumanName _getName() => HumanName(
    family: _familyNames[Random().nextInt(50)],
    given: [_firstNames[Random().nextInt(200)]]);

final _familyNames = [
  'Smith',
  'Johnson',
  'Williams',
  'Brown',
  'Jones',
  'Garcia',
  'Miller',
  'Davis',
  'Rodriguez',
  'Martinez',
  'Hernandez',
  'Lopez',
  'Gonzalez',
  'Wilson',
  'Anderson',
  'Thomas',
  'Taylor',
  'Moore',
  'Jackson',
  'Martin',
  'Lee',
  'Perez',
  'Thompson',
  'White',
  'Harris',
  'Sanchez',
  'Clark',
  'Ramirez',
  'Lewis',
  'Robinson',
  'Walker',
  'Young',
  'Allen',
  'King',
  'Wright',
  'Scott',
  'Torres',
  'Nguyen',
  'Hill',
  'Flores',
  'Green',
  'Adams',
  'Nelson',
  'Baker',
  'Hall',
  'Rivera',
  'Campbell',
  'Mitchell',
  'Carter',
  'Roberts',
];

final _firstNames = [
  'Mary',
  'Patricia',
  'Jennifer',
  'Linda',
  'Elizabeth',
  'Barbara',
  'Susan',
  'Jessica',
  'Sarah',
  'Karen',
  'Nancy',
  'Lisa',
  'Margaret',
  'Betty',
  'Sandra',
  'Ashley',
  'Dorothy',
  'Kimberly',
  'Emily',
  'Donna',
  'Michelle',
  'Carol',
  'Amanda',
  'Melissa',
  'Deborah',
  'Stephanie',
  'Rebecca',
  'Laura',
  'Sharon',
  'Cynthia',
  'Kathleen',
  'Amy',
  'Shirley',
  'Angela',
  'Helen',
  'Anna',
  'Brenda',
  'Pamela',
  'Nicole',
  'Samantha',
  'Katherine',
  'Emma',
  'Ruth',
  'Christine',
  'Catherine',
  'Debra',
  'Rachel',
  'Carolyn',
  'Janet',
  'Virginia',
  'Maria',
  'Heather',
  'Diane',
  'Julie',
  'Joyce',
  'Victoria',
  'Kelly',
  'Christina',
  'Lauren',
  'Joan',
  'Evelyn',
  'Olivia',
  'Judith',
  'Megan',
  'Cheryl',
  'Martha',
  'Andrea',
  'Frances',
  'Hannah',
  'Jacqueline',
  'Ann',
  'Gloria',
  'Jean',
  'Kathryn',
  'Alice',
  'Teresa',
  'Sara',
  'Janice',
  'Doris',
  'Madison',
  'Julia',
  'Grace',
  'Judy',
  'Abigail',
  'Marie',
  'Denise',
  'Beverly',
  'Amber',
  'Theresa',
  'Marilyn',
  'Danielle',
  'Diana',
  'Brittany',
  'Natalie',
  'Sophia',
  'Rose',
  'Isabella',
  'Alexis',
  'Kayla',
  'Charlotte',
  'James',
  'John',
  'Robert',
  'Michael',
  'William',
  'David',
  'Richard',
  'Joseph',
  'Thomas',
  'Charles',
  'Christopher',
  'Daniel',
  'Matthew',
  'Anthony',
  'Donald',
  'Mark',
  'Paul',
  'Steven',
  'Andrew',
  'Kenneth',
  'Joshua',
  'Kevin',
  'Brian',
  'George',
  'Edward',
  'Ronald',
  'Timothy',
  'Jason',
  'Jeffrey',
  'Ryan',
  'Jacob',
  'Gary',
  'Nicholas',
  'Eric',
  'Jonathan',
  'Stephen',
  'Larry',
  'Justin',
  'Scott',
  'Brandon',
  'Benjamin',
  'Samuel',
  'Frank',
  'Gregory',
  'Raymond',
  'Alexander',
  'Patrick',
  'Jack',
  'Dennis',
  'Jerry',
  'Tyler',
  'Aaron',
  'Jose',
  'Henry',
  'Adam',
  'Douglas',
  'Nathan',
  'Peter',
  'Zachary',
  'Kyle',
  'Walter',
  'Harold',
  'Jeremy',
  'Ethan',
  'Carl',
  'Keith',
  'Roger',
  'Gerald',
  'Christian',
  'Terry',
  'Sean',
  'Arthur',
  'Austin',
  'Noah',
  'Lawrence',
  'Jesse',
  'Joe',
  'Bryan',
  'Billy',
  'Jordan',
  'Albert',
  'Dylan',
  'Bruce',
  'Willie',
  'Gabriel',
  'Alan',
  'Juan',
  'Logan',
  'Wayne',
  'Ralph',
  'Roy',
  'Eugene',
  'Randy',
  'Vincent',
  'Russell',
  'Louis',
  'Philip',
  'Bobby',
  'Johnny',
  'Bradley',
];
