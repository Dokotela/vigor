import '../constants/constants.dart';
import 'relationship_types.dart';

bool isValidRegistrationName(String name) => name.length >= 2;

bool isValidRegistrationGender(String gender) => gender.contains(gender);

bool isValidGenderInt(int gender) => gender > 0;

bool isValidRegistrationBirthDate(DateTime date) =>
    DateTime.now().isAfter(date);

bool isValidRegistrationBarrio(String barrio) => barrios.contains(barrio);

bool isValidRegistrationRelation(String relation) =>
    relationshipTypes().contains(relation);
