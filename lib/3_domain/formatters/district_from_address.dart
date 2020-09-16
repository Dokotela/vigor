import 'package:fhir/r4.dart';

String districtFromAddress(List<Address> address) =>
    address == null ? 'Neighborhood' : address[0]?.district ?? 'Neighborhood';
