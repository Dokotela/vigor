import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vigor/routes/routes.dart';
import '../../../models/data/patient_model.dart';

import 'shared/relative_age.dart';

class PatientHomeController extends GetxController
    with SingleGetTickerProviderMixin {
  /// PROPERTIES
  final patient = PatientModel(patient: Get.arguments);
  final RxInt _tabIndex = 0.obs;
  final List<String> _tabsList = [
    'Vaccines',
    'Growth\nCurve',
    'Milestones',
  ]; // todo: extract list, add internationalization
  TabController _tabController;

  /// INIT
  @override
  void onInit() {
    _tabController = TabController(length: _tabsList.length, vsync: this);
    super.onInit();
  }

  /// CLOSE
  @override
  void onClose() {
    _tabController.dispose();
    super.onClose();
  }

  /// SETTER FUNCTIONS
  set tabIndex(int value) => _tabIndex.value = value;

  /// GETTER FUNCTIONS
  String name() => patient.name();
  String id() => patient.id();
  String sex() => patient.sex();
  String birthDate() => patient.birthDate();
  String relativeAge() => sharedRelativeAge(patient.birthDate());

  int get tabIndex => _tabIndex.value;
  List<String> tabsList() => _tabsList;
  TabController get tabController => _tabController;

  /// EVENTS
  void editPatient() =>
      Get.offNamed(AppRoutes.PATIENT_REGISTRATION, arguments: patient);
}
