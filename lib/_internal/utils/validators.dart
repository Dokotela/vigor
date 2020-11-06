import '../../models/_internal/const.dart';

bool isValidRegistrationName(String name) => name.length >= 2;

bool isValidRegistrationGender(String gender) => gender.contains(gender);

bool isValidRegistrationBirthDate(DateTime date) =>
    DateTime.now().isAfter(date);

bool isValidRegistrationBarrio(String barrio) => barrios.contains(barrio);

bool isValidRegistrationRelation(String relation) =>
    relationship_types.contains(relation);
