import 'package:fhir/fhir_r4.dart';
import 'package:flutter/material.dart';
import 'package:vax_cast/vax_cast/export_vax_cast.dart';

abstract class IVaxCast {
  static Future<Parameters> vaxCast({
    Date assessmentDate,
    @required Patient patient,
    List<Immunization> immunizations,
  }) async {
    return await VaxCast()
        .forecastR4(patient, immunizations, assessmentDate.toString());
  }
}
