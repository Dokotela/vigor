import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';

part 'registration_controller.freezed.dart';
part 'registration_state.dart';
part 'registration_event.dart';

class RegistrationController extends GetxController {
  // PROPERTIES
  final state = RegistrationState().obs;

  // INIT
  @override
  void onInit() {
    state.value = RegistrationState.initial();
    super.onInit();
  }

  // GETTERS
  String get text1 => state.value.text1;
  String get text2 => state.value.text2;
  String get text3 => state.value.text3;

  // EVENTS
  void event(RegistrationEvent newEvent) {
    if (newEvent is _Text1) {
      state.value = state.value.copyWith(text1: newEvent.text);
    } else if (newEvent is _Text2) {
      state.value = state.value.copyWith(text2: newEvent.text);
    } else if (newEvent is _Text3) {
      state.value = state.value.copyWith(text3: newEvent.text);
    }
    update();
  }
}
