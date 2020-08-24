import 'dart:convert';
import 'dart:io';

import 'package:fhir/fhir_r4.dart';
import 'package:http/http.dart';

Future main() async {
  const server = 'http://localhost:8080/hapi-fhir-jpaserver/fhir';
  const headers = {'Content-type': 'application/fhir+json'};
  final bundle = Bundle.fromJson(jsonDecode(
      await File('./test/create_patients/list.json').readAsString()));

  final result =
      await post(server, headers: headers, body: jsonEncode(bundle.toJson()));
  print(result.headers);
  print(result.body);
}
