import 'package:dartz/dartz.dart';
import 'package:fhir/r4.dart';
import 'package:vax_cast/vax_cast.dart';

abstract class IDrVaxCast {
  static Map<String, Tuple2<int, List<FhirDateTime>>> drVaxCast({
    List<Immunization> immunizations,
  }) {
    var immHx = <String, Tuple2<int, List<FhirDateTime>>>{
      'Tuberculosis': Tuple2(0, []),
      'HepB': Tuple2(0, []),
      'Rotavirus': Tuple2(0, []),
      'Polio': Tuple2(0, []),
      'Pentavalente': Tuple2(0, []),
      'Pneumococcal': Tuple2(0, []),
      'Influenza': Tuple2(0, []),
      'MMR': Tuple2(0, []),
      'DTP': Tuple2(0, []),
      'MR': Tuple2(0, []),
    };

    for (var imm in immunizations) {
      var agByCvx = simpleCvxMap[imm.vaccineCode.coding[0].code.toString()];
      for (var ag in agByCvx.antigens) {
        if (immHx.keys.contains(ag)) {
          immHx[ag].value2.add(imm.occurrenceDateTime);
          immHx[ag] = Tuple2(immHx[ag].value1 + 1, immHx[ag].value2);
        }
      }
      var cvx = imm.vaccineCode.coding[0].code.toString();
      if (cvx == '198' || cvx == '102' || cvx == '132' || cvx == '146') {
        immHx['Pentavalente'].value2.add(imm.occurrenceDateTime);
        immHx['Pentavalente'] = Tuple2(
            immHx['Pentavalente'].value1 + 1, immHx['Pentavalente'].value2);
      } else if (cvx == '03' || cvx == '94') {
        immHx['MMR'].value2.add(imm.occurrenceDateTime);
        immHx['MMR'] = Tuple2(immHx['MMR'].value1 + 1, immHx['MMR'].value2);
      } else if (cvx == '01' ||
          cvx == '20' ||
          cvx == '22' ||
          cvx == '50' ||
          cvx == '106' ||
          cvx == '107' ||
          cvx == '110' ||
          cvx == '120' ||
          cvx == '130' ||
          cvx == '170') {
        immHx['DTP'].value2.add(imm.occurrenceDateTime);
        immHx['DTP'] = Tuple2(immHx['DTP'].value1 + 1, immHx['DTP'].value2);
      } else if (cvx == '04') {
        immHx['MR'].value2.add(imm.occurrenceDateTime);
        immHx['MR'] = Tuple2(immHx['MR'].value1 + 1, immHx['MR'].value2);
      }
    }

    return immHx;
  }
}
