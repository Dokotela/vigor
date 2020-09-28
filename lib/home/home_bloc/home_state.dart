part of 'home_controller.dart';

@freezed
abstract class HomeState with _$HomeState {
  const factory HomeState({
    String name,
    String nameError,
    String newNameError,
    List<String> nameList,
    List<Patient> patientList,
  }) = _HomeState;

  factory HomeState.initial() => const HomeState(
        name: '',
        nameError: '',
        newNameError: '',
        nameList: [],
        patientList: [],
      );

  factory HomeState.loadNames(
          {List<String> nameList, List<Patient> patientList}) =>
      HomeState(
        name: '',
        nameError: '',
        newNameError: '',
        nameList: nameList,
        patientList: patientList,
      );
}
