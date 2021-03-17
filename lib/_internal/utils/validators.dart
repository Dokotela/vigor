import '../constants/constants.dart';
import 'relationship_types.dart';
import 'utils.dart';

bool isValidRegistrationName(String name) => name.length >= 2;

bool isValidGender(String gender) =>
    genderList().contains(gender) && gender != '';

bool isValidRegistrationBirthDate(DateTime? date) => date == null
    ? false
    : DateTime.now().isAfter(date) && date != DateTime(1900, 1, 1);

bool isValidRegistrationBarrio(String barrio) =>
    barrios.contains(barrio) && barrio != '';

bool isValidRegistrationRelation(String relation) =>
    relationshipTypes().contains(relation);
