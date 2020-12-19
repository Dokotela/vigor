import 'package:fhir/r4.dart';
import 'package:get/get.dart';

import '../../localization.dart';

String districtFromAddress(List<Address> address) {
  final labels = AppLocalizations.of(Get.context);
  return address == null
      ? labels.address.neighborhood.title
      : address[0]?.district ?? labels.address.neighborhood.title;
}
