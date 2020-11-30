import 'package:fhir/r4.dart';
import 'package:vax_cast/vax_cast.dart';

abstract class IDrVaxCast {
  static Map<String, Set<FhirDateTime>> drVaxCast({
    List<Immunization> immunizations,
  }) {
    var immHx = <String, Set<FhirDateTime>>{
      'Tuberculosis': {},
      'HepB': {},
      'Rotavirus': {},
      'Polio': {},
      'Pentavalente': {},
      'Pneumococcal': {},
      'Influenza': {},
      'MMR': {},
      'DTP': {},
      'MR': {},
    };

    for (var imm in immunizations) {
      var agByCvx = simpleCvxMap[imm.vaccineCode.coding[0].code.toString()];
      for (var ag in agByCvx.antigens) {
        if (immHx.keys.contains(ag)) {
          immHx[ag].add(imm.occurrenceDateTime);
        }
      }
      var cvx = imm.vaccineCode.coding[0].code.toString();
      if (cvx == '198' || cvx == '102' || cvx == '132' || cvx == '146') {
        immHx['Pentavalente'].add(imm.occurrenceDateTime);
      } else if (cvx == '03' || cvx == '94') {
        immHx['MMR'].add(imm.occurrenceDateTime);
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
        immHx['DTP'].add(imm.occurrenceDateTime);
      } else if (cvx == '04') {
        immHx['MR'].add(imm.occurrenceDateTime);
      }
    }
    for (var k in immHx.keys) {
      var temp = immHx[k].toList();

      temp.sort((a, b) => VaxDate.fromString(a.toString())
          .compareTo(VaxDate.fromString(b.toString())));
      immHx[k] = temp.toSet();
    }

    return immHx;
  }
}
