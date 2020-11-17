import 'package:fhir/r4.dart';
import 'package:get/get.dart';
import 'package:vigor/_internal/constants/constants.dart';
import 'package:vigor/_internal/utils/utils.dart';
import 'package:vigor/_internal/utils/validators.dart';
import 'package:vigor/models/data/patient_model.dart';
import 'package:vigor/routes/routes.dart';

class PatientRegistrationController extends GetxController {
  /// PROPERTIES
  final _patient = PatientModel().obs;
  final _familyNameError = ''.obs;
  final _givenNameError = ''.obs;
  final _birthDate = DateTime(
    DateTime.now().year,
    DateTime.now().month,
    DateTime.now().day + 1,
  ).obs;
  final _gender = 'female'.obs;
  final _birthDateError = ''.obs;
  final _barrio = 'Neighborhood'.obs;
  final _barrioError = ''.obs;
  final _barriosList = barrios.obs;

  /// INIT
  @override
  void onInit() {
    if (Get.arguments != null) {
      _patient.value = Get.arguments ?? PatientModel().obs;
      _gender.value = basicEnumToString(_patient.value.sex());
      _birthDate.value =
          DateTime.parse(_patient.value.patient.birthDate.toString());
      _barrio.value = _patient.value.barrio();
    }
    super.onInit();
  }

  ///  GETTERS
  String get gender => _gender.value;
  String get initialFamilyName => _patient.value.familyName();
  String get initialGivenName => _patient.value.givenName();
  DateTime get birthDate => _birthDate.value;
  String get birthDateString => dateFromDateTime(_birthDate.value);
  String get barrio => _barrio.value;
  String get familyNameError => _familyNameError.value;
  String get givenNameError => _givenNameError.value;
  String get birthDateError => _birthDateError.value;
  String get barrioError => _barrioError.value;
  List<String> get barriosList => _barriosList;

  /// EVENTS
  void genderEvent(String gender) => _gender.value = gender;

  void birthDateEvent(DateTime birthDate) => _birthDate.value = birthDate;

  void barrioEvent(String barrio) => _barrio.value = barrio;

  void registerEvent({String familyName, String givenName}) {
    if (isValidRegistrationName(familyName)) {
      if (isValidRegistrationName(givenName)) {
        if (isValidRegistrationBirthDate(birthDate)) {
          if (isValidRegistrationBarrio(barrio)) {
            _patient.value.patient = _patient.value.patient == null
                ? Patient(
                    name: [
                      HumanName(family: familyName, given: [givenName])
                    ],
                    birthDate: Date(birthDate),
                    address: [Address(district: barrio)],
                    gender: gender == 'female'
                        ? PatientGender.female
                        : PatientGender.male)
                : _patient.value.patient.copyWith(
                    name: [
                      HumanName(family: familyName, given: [givenName])
                    ],
                    birthDate: Date(birthDate),
                    address: [Address(district: barrio)],
                    gender: gender == 'female'
                        ? PatientGender.female
                        : PatientGender.male);
            Get.toNamed(AppRoutes.CONTACT_REGISTRATION,
                arguments: _patient.value);
          } else {
            _barrioError.value = 'Please select neighborhood';
          }
        } else {
          _birthDateError.value = 'Cannot be future date';
        }
      } else {
        _givenNameError.value = 'Enter other names';
      }
    } else {
      _familyNameError.value = 'Enter family name';
    }
  }
}
