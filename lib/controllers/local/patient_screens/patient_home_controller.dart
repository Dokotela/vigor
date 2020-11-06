import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../models/patient_model.dart';
import '../../views/screens.dart';
import 'shared/relative_age.dart';

class PatientHomeController extends GetxController
    with SingleGetTickerProviderMixin {
  // PROPERTIES
  final PatientModel patient = PatientModel(patient: Get.arguments);
  final RxInt _tabIndex = 0.obs;
  final List<String> _tabsList = [
    'Growth\nCurve',
    'Milestones',
    'Vaccines',
  ]; // todo: extract list, add internationalization
  TabController _tabController;

  // INIT
  @override
  void onInit() {
    super.onInit();
    _tabController = TabController(length: _tabsList.length, vsync: this);
  }

  // CLOSE
  @override
  void onClose() {
    _tabController.dispose();
    super.onClose();
  }

  // SETTER FUNCTIONS
  set tabIndex(int value) => _tabIndex.value = value;

  // GETTER FUNCTIONS
  String name() => patient.name();
  String id() => patient.id();
  String sex() => patient.sex();
  String birthDate() => patient.birthDate();
  String relativeAge() => sharedRelativeAge(patient.birthDate());

  int get tabIndex => _tabIndex.value;
  List<String> tabsList() => _tabsList;
  TabController get tabController => _tabController;

  // FUNCTIONS
  void editPatient() =>
      Get.off(PatientRegistrationScreen(), arguments: patient.patient);

  void parasiteScreen() =>
      Get.to(PatientParasite(), arguments: patient.patient);

  // void immunizationScreen() =>
  //     Get.to(PatientImmunizations(), arguments: patient);
}
