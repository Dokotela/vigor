import 'dart:convert';

import 'package:fhir/r4.dart';
import 'package:fhir_db/resource_dao.dart';
import 'package:http/http.dart';

import 'i_fhir_db.dart';

class IFhirServer {
  IFhirServer();
  static const server = 'https://dbhifhir.aidbox.app/';
  // static const server = 'http://10.0.2.2:8080/hapi-fhir-jpaserver';

  Future syncWithServer() async {
    final headers = await _getAuthorizationToken();
    // final headers = {'Content-type': 'application/fhir+json'};

    // await uploadAllResources(headers);

    final patientBundles = await _getPatients(headers);
    await saveToDb(patientBundles);

    final vaccineBundles = await _getImmunizations(headers);
    await saveToDb(vaccineBundles);
  }

  Future uploadAllResources(Map<String, dynamic> headers) async {
    final allResources = await ResourceDao().getAllResources(null);
    final resourceBundle = Bundle(
      resourceType: 'Bundle',
      type: BundleType.transaction,
      entry: [],
    );
    for (final resource in allResources) {
      resourceBundle.entry.add(
        BundleEntry(
          resource: resource,
          request: BundleRequest(
            method: BundleRequestMethod.post,
            url: FhirUri(resource.resourceType),
          ),
        ),
      );
    }
    await post('$server/fhir',
        headers: headers, body: jsonEncode(resourceBundle.toJson()));
  }

  Future saveToDb(List<Bundle> bundleList) async {
    final iFhirDb = IFhirDb();
    for (final bundle in bundleList) {
      for (final entry in bundle.entry) {
        iFhirDb.save(entry.resource);
      }
    }
  }

  Future<Map<String, String>> _getAuthorizationToken() async {
    final headers = {'Content-type': 'application/json'};
    const identifier = 'web-app';
    const secret = 'verysecret';

    final response = await post(
        '$server/auth/token?client_id=$identifier&grant_type=client_credentials&client_secret=$secret',
        headers: headers);
    if (response.statusCode == 200) {
      final parsedbody = json.decode(response.body);
      final token = parsedbody['token_type'] + ' ' + parsedbody['access_token'];
      headers.putIfAbsent('Authorization', () => token);
    }
    return headers;
  }

  Future<List<Bundle>> _getPatients(Map<String, String> headers) async {
    final bundleList = <Bundle>[];
    bundleList.add(await getBundle('$server/fhir/Patient', headers));
    while (bundleList.last.link.firstWhere((link) => link.relation == 'next',
            orElse: () => null) !=
        null) {
      final newSearchUrl = bundleList.last.link
          .firstWhere((link) => link.relation == 'next')
          .url
          .toString();
      bundleList.add(await getBundle('$server/fhir$newSearchUrl', headers));
    }
    return bundleList;
  }

  Future<List<Bundle>> _getImmunizations(Map<String, String> headers) async {
    final bundleList = <Bundle>[];
    bundleList.add(await getBundle('$server/fhir/Immunization', headers));
    while (bundleList.last.link.firstWhere((link) => link.relation == 'next',
            orElse: () => null) !=
        null) {
      final newSearchUrl = bundleList.last.link
          .firstWhere((link) => link.relation == 'next')
          .url
          .toString();
      bundleList.add(await getBundle('$server/fhir$newSearchUrl', headers));
    }
    return bundleList;
  }

  Future<Bundle> getBundle(String url, Map<String, String> headers) async {
    print(url);
    final result = await get(url, headers: headers);
    return Bundle.fromJson(json.decode(result.body));
  }
}
