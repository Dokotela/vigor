import 'package:fhir/fhir_r4.dart';

String districtFromAddress(List<Address> address) =>
    address == null ? 'Neighborhood' : address[0]?.district ?? 'Neighborhood';
