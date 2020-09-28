part of 'vaccines_controller.dart';

@freezed
abstract class VaccinesState with _$VaccinesState {
  const factory VaccinesState({
    String name,
    String nameError,
    String newNameError,
    List<String> nameList,
    List<Patient> patientList,
  }) = _VaccinesState;

  factory VaccinesState.initial() => const VaccinesState(
        name: '',
        nameError: '',
        newNameError: '',
        nameList: [],
        patientList: [],
      );

  factory VaccinesState.loadNames(
          {List<String> nameList, List<Patient> patientList}) =>
      VaccinesState(
        name: '',
        nameError: '',
        newNameError: '',
        nameList: nameList,
        patientList: patientList,
      );
}
