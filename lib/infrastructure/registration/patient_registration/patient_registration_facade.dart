import 'package:dartz/dartz.dart';
import 'package:fhir/fhir_r4.dart';
import 'package:vigor/domain/registration/patient_registration/i_patient_registration_facade.dart';
import 'package:vigor/domain/registration/patient_registration/patient_registration_value_objects.dart';
import 'package:vigor/domain/registration/registration_failure.dart';
import 'package:vigor/domain/registration/registration_value_objects.dart';
import 'package:vigor/infrastructure/fhir_db/resource_dao.dart';

class PatientRegistrationFacade implements IPatientRegistrationFacade {
  PatientRegistrationFacade();

  @override
  Future<Either<RegistrationFailure, Unit>> register({
    RegistrationName family,
    RegistrationName given,
    RegistrationGender gender,
    RegistrationBirthDate birthDate,
    RegistrationBarrio barrio,
  }) async {
    final familyString = family.getOrCrash();
    final givenString = given.getOrCrash();
    final genderString = gender.getOrCrash();
    final birthDateString = birthDate.getOrCrash();
    final barrioString = barrio.getOrCrash();

    ResourceDao patientDao = ResourceDao();
    Patient newPatient = Patient(
      resourceType: 'Patient',
      name: [
        HumanName(
          family: familyString,
          given: [givenString],
        ),
      ],
      birthDate: Date(birthDateString),
      gender: genderString == 'female'
          ? PatientGender.female
          : genderString == 'male' ? PatientGender.male : PatientGender.unknown,
      address: [Address(district: barrioString)],
    );

    try {
      await patientDao.save(newPatient);
      return right(unit);
    } on Exception {
      return left(const RegistrationFailure.unableToWriteDB());
    }
  }

  @override
  Future<Either<RegistrationFailure, Unit>> update({
    Patient patient,
    RegistrationName family,
    RegistrationName given,
    RegistrationGender gender,
    RegistrationBirthDate birthDate,
    RegistrationBarrio barrio,
  }) async {
    final familyString = family.getOrCrash();
    final givenString = given.getOrCrash();
    final genderString = gender.getOrCrash();
    final birthDateString = birthDate.getOrCrash();
    final barrioString = barrio.getOrCrash();

    ResourceDao patientDao = ResourceDao();
    Patient newPatient = patient.copyWith(
      name: [
        HumanName(
          family: familyString,
          given: [givenString],
        ),
      ],
      birthDate: Date(birthDateString),
      gender: genderString == 'female'
          ? PatientGender.female
          : genderString == 'male' ? PatientGender.male : PatientGender.unknown,
      address: [Address(district: barrioString)],
    );

    try {
      await patientDao.save(newPatient);
      return right(unit);
    } on Exception {
      return left(const RegistrationFailure.unableToWriteDB());
    }
  }
}
