import 'package:fhir/r4.dart';
import 'package:get/get.dart';
import 'package:vigor/_internal/constants/constants.dart';
import 'package:vigor/_internal/utils/utils.dart';
import 'package:vigor/_internal/utils/validators.dart';
import 'package:vigor/models/data/patient_model.dart';
import 'package:vigor/ui/views/views.dart';

class PatientRegistrationController extends GetxController {
  /// PROPERTIES
  final _patient = PatientModel(
    patient: Patient(
      name: [
        HumanName(family: '', given: [''])
      ],
      gender: PatientGender.female,
      birthDate: Date(DateTime(
          DateTime.now().year, DateTime.now().month, DateTime.now().day + 1)),
      address: [Address(district: 'Neighborhood')],
    ),
  ).obs;
  final _familyNameError = ''.obs;
  final _givenNameError = ''.obs;
  final _birthDateError = ''.obs;
  final _barrioError = ''.obs;
  final _barriosList = barrios.obs;

  /// INIT
  @override
  void onInit() {
    if (Get.arguments != null) {
      _patient.value = Get.arguments;
    }
    super.onInit();
  }

  ///  GETTERS
  String get gender => basicEnumToString(_patient.value.sex());
  DateTime get birthDate =>
      DateTime.parse(_patient.value.patient.birthDate.toString());
  String get birthDateString => _patient.value.birthDate();
  String get barrio => _patient.value.barrio();
  String get familyName => _patient.value.familyName();
  String get givenName => _patient.value.givenName();
  String get familyNameError => _familyNameError.value;
  String get givenNameError => _givenNameError.value;
  String get birthDateError => _birthDateError.value;
  String get barrioError => _barrioError.value;
  List<String> get barriosList => _barriosList;

  /// EVENTS
  void genderEvent(String gender) => _patient.value.patient.copyWith(
      gender: gender == 'female' ? PatientGender.female : PatientGender.male);

  void birthDateEvent(DateTime birthDate) =>
      _patient.value.patient.copyWith(birthDate: Date(birthDate));

  void barrioEvent(String barrio) =>
      _patient.value.patient.copyWith(address: [Address(district: barrio)]);

  void registerEvent({String familyName, String givenName}) {
    if (isValidRegistrationName(familyName)) {
      if (isValidRegistrationName(givenName)) {
        if (isValidRegistrationBirthDate(birthDate)) {
          if (isValidRegistrationBarrio(barrio)) {
            _patient.value.patient = _patient.value.patient.copyWith(
                name: [
                  HumanName(family: familyName, given: [givenName])
                ],
                birthDate: Date(birthDate),
                address: [Address(district: barrio)],
                gender: gender == 'female'
                    ? PatientGender.female
                    : PatientGender.male);
            Get.to(ContactRegistrationPage(),
                arguments: _patient.value.patient);
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
