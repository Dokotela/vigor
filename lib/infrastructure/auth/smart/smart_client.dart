import 'dart:convert';

import 'package:fhir/fhir_r4.dart';
import 'package:http/http.dart';

class SmartClient {
  final FhirUri fhirBaseUrl =
      FhirUri('https://launch.smarthealthit.org/v/r4/fhir');
  final String clientId = 'bd60dabb-4d99-4134-a4cc-1e789a780eb3';
  final String clientSecret = 'verysecret';
  FhirUri authorizeUrl;
  FhirUri tokenUrl;
  String scope;
  final FhirUri redirectUri = FhirUri('local');

  SmartClient();

  void connect() async {
    var response = await get('${fhirBaseUrl.toString()}/metadata');
    var jsonResponse = jsonDecode(response.body);
    CapabilityStatement capabilityStatement =
        CapabilityStatement.fromJson(jsonResponse);
    authorizeUrl = getEndpoint(capabilityStatement, 'authorize');
    tokenUrl = getEndpoint(capabilityStatement, 'token');
  }

  FhirUri getEndpoint(
          CapabilityStatement capabilityStatement, String endpoint) =>
      capabilityStatement.rest[0].security.extension_[0].extension_
          .firstWhere((endpoints) => endpoints.url == FhirUri(endpoint))
          .valueUri;
}
