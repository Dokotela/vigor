part of 'resource_dao.dart';

Resource _getIdAndMeta(Resource resource) => _newVersion(resource,
    newId: Id('vigor-${resource.hashCode}-${DateTime.now().hashCode}'));

Meta _updateMetaVersion(Meta oldMeta) {
  var version =
      oldMeta == null ? 1 : int.parse(oldMeta.versionId.toString()) + 1;
  return Meta(
    lastUpdated: Instant(DateTime.now()),
    versionId: Id(version.toString()),
  );
}

Resource _newVersion(Resource resource, {Meta oldMeta, Id newId}) {
  switch (resource.resourceType) {
    case 'Account':
      return (resource as Account).copyWith(
          id: newId == null ? resource.id : newId,
          meta: _updateMetaVersion(oldMeta));
    case 'ActivityDefinition':
      return (resource as ActivityDefinition).copyWith(
          id: newId == null ? resource.id : newId,
          meta: _updateMetaVersion(oldMeta));
    case 'AdverseEvent':
      return (resource as AdverseEvent).copyWith(
          id: newId == null ? resource.id : newId,
          meta: _updateMetaVersion(oldMeta));
    case 'AllergyIntolerance':
      return (resource as AllergyIntolerance).copyWith(
          id: newId == null ? resource.id : newId,
          meta: _updateMetaVersion(oldMeta));
    case 'Appointment':
      return (resource as Appointment).copyWith(
          id: newId == null ? resource.id : newId,
          meta: _updateMetaVersion(oldMeta));
    case 'AppointmentResponse':
      return (resource as AppointmentResponse).copyWith(
          id: newId == null ? resource.id : newId,
          meta: _updateMetaVersion(oldMeta));
    case 'AuditEvent':
      return (resource as AuditEvent).copyWith(
          id: newId == null ? resource.id : newId,
          meta: _updateMetaVersion(oldMeta));
    case 'Basic':
      return (resource as Basic).copyWith(
          id: newId == null ? resource.id : newId,
          meta: _updateMetaVersion(oldMeta));
    case 'Binary':
      return (resource as Binary).copyWith(
          id: newId == null ? resource.id : newId,
          meta: _updateMetaVersion(oldMeta));
    case 'BiologicallyDerivedProduct':
      return (resource as BiologicallyDerivedProduct).copyWith(
          id: newId == null ? resource.id : newId,
          meta: _updateMetaVersion(oldMeta));
    case 'BodyStructure':
      return (resource as BodyStructure).copyWith(
          id: newId == null ? resource.id : newId,
          meta: _updateMetaVersion(oldMeta));
    case 'Bundle':
      return (resource as Bundle).copyWith(
          id: newId == null ? resource.id : newId,
          meta: _updateMetaVersion(oldMeta));
    case 'CapabilityStatement':
      return (resource as CapabilityStatement).copyWith(
          id: newId == null ? resource.id : newId,
          meta: _updateMetaVersion(oldMeta));
    case 'CarePlan':
      return (resource as CarePlan).copyWith(
          id: newId == null ? resource.id : newId,
          meta: _updateMetaVersion(oldMeta));
    case 'CareTeam':
      return (resource as CareTeam).copyWith(
          id: newId == null ? resource.id : newId,
          meta: _updateMetaVersion(oldMeta));
    case 'CatalogEntry':
      return (resource as CatalogEntry).copyWith(
          id: newId == null ? resource.id : newId,
          meta: _updateMetaVersion(oldMeta));
    case 'ChargeItem':
      return (resource as ChargeItem).copyWith(
          id: newId == null ? resource.id : newId,
          meta: _updateMetaVersion(oldMeta));
    case 'ChargeItemDefinition':
      return (resource as ChargeItemDefinition).copyWith(
          id: newId == null ? resource.id : newId,
          meta: _updateMetaVersion(oldMeta));
    case 'Claim':
      return (resource as Claim).copyWith(
          id: newId == null ? resource.id : newId,
          meta: _updateMetaVersion(oldMeta));
    case 'ClaimResponse':
      return (resource as ClaimResponse).copyWith(
          id: newId == null ? resource.id : newId,
          meta: _updateMetaVersion(oldMeta));
    case 'ClinicalImpression':
      return (resource as ClinicalImpression).copyWith(
          id: newId == null ? resource.id : newId,
          meta: _updateMetaVersion(oldMeta));
    case 'CodeSystem':
      return (resource as CodeSystem).copyWith(
          id: newId == null ? resource.id : newId,
          meta: _updateMetaVersion(oldMeta));
    case 'Communication':
      return (resource as Communication).copyWith(
          id: newId == null ? resource.id : newId,
          meta: _updateMetaVersion(oldMeta));
    case 'CommunicationRequest':
      return (resource as CommunicationRequest).copyWith(
          id: newId == null ? resource.id : newId,
          meta: _updateMetaVersion(oldMeta));
    case 'CompartmentDefinition':
      return (resource as CompartmentDefinition).copyWith(
          id: newId == null ? resource.id : newId,
          meta: _updateMetaVersion(oldMeta));
    case 'Composition':
      return (resource as Composition).copyWith(
          id: newId == null ? resource.id : newId,
          meta: _updateMetaVersion(oldMeta));
    case 'ConceptMap':
      return (resource as ConceptMap).copyWith(
          id: newId == null ? resource.id : newId,
          meta: _updateMetaVersion(oldMeta));
    case 'Condition':
      return (resource as Condition).copyWith(
          id: newId == null ? resource.id : newId,
          meta: _updateMetaVersion(oldMeta));
    case 'Consent':
      return (resource as Consent).copyWith(
          id: newId == null ? resource.id : newId,
          meta: _updateMetaVersion(oldMeta));
    case 'Contract':
      return (resource as Contract).copyWith(
          id: newId == null ? resource.id : newId,
          meta: _updateMetaVersion(oldMeta));
    case 'Coverage':
      return (resource as Coverage).copyWith(
          id: newId == null ? resource.id : newId,
          meta: _updateMetaVersion(oldMeta));
    case 'CoverageEligibilityRequest':
      return (resource as CoverageEligibilityRequest).copyWith(
          id: newId == null ? resource.id : newId,
          meta: _updateMetaVersion(oldMeta));
    case 'CoverageEligibilityResponse':
      return (resource as CoverageEligibilityResponse).copyWith(
          id: newId == null ? resource.id : newId,
          meta: _updateMetaVersion(oldMeta));
    case 'DetectedIssue':
      return (resource as DetectedIssue).copyWith(
          id: newId == null ? resource.id : newId,
          meta: _updateMetaVersion(oldMeta));
    case 'Device':
      return (resource as Device).copyWith(
          id: newId == null ? resource.id : newId,
          meta: _updateMetaVersion(oldMeta));
    case 'DeviceDefinition':
      return (resource as DeviceDefinition).copyWith(
          id: newId == null ? resource.id : newId,
          meta: _updateMetaVersion(oldMeta));
    case 'DeviceMetric':
      return (resource as DeviceMetric).copyWith(
          id: newId == null ? resource.id : newId,
          meta: _updateMetaVersion(oldMeta));
    case 'DeviceRequest':
      return (resource as DeviceRequest).copyWith(
          id: newId == null ? resource.id : newId,
          meta: _updateMetaVersion(oldMeta));
    case 'DeviceUseStatement':
      return (resource as DeviceUseStatement).copyWith(
          id: newId == null ? resource.id : newId,
          meta: _updateMetaVersion(oldMeta));
    case 'DiagnosticReport':
      return (resource as DiagnosticReport).copyWith(
          id: newId == null ? resource.id : newId,
          meta: _updateMetaVersion(oldMeta));
    case 'DocumentManifest':
      return (resource as DocumentManifest).copyWith(
          id: newId == null ? resource.id : newId,
          meta: _updateMetaVersion(oldMeta));
    case 'DocumentReference':
      return (resource as DocumentReference).copyWith(
          id: newId == null ? resource.id : newId,
          meta: _updateMetaVersion(oldMeta));
    case 'EffectEvidenceSynthesis':
      return (resource as EffectEvidenceSynthesis).copyWith(
          id: newId == null ? resource.id : newId,
          meta: _updateMetaVersion(oldMeta));
    case 'Encounter':
      return (resource as Encounter).copyWith(
          id: newId == null ? resource.id : newId,
          meta: _updateMetaVersion(oldMeta));
    case 'Endpoint':
      return (resource as Endpoint).copyWith(
          id: newId == null ? resource.id : newId,
          meta: _updateMetaVersion(oldMeta));
    case 'EnrollmentRequest':
      return (resource as EnrollmentRequest).copyWith(
          id: newId == null ? resource.id : newId,
          meta: _updateMetaVersion(oldMeta));
    case 'EnrollmentResponse':
      return (resource as EnrollmentResponse).copyWith(
          id: newId == null ? resource.id : newId,
          meta: _updateMetaVersion(oldMeta));
    case 'EpisodeOfCare':
      return (resource as EpisodeOfCare).copyWith(
          id: newId == null ? resource.id : newId,
          meta: _updateMetaVersion(oldMeta));
    case 'EventDefinition':
      return (resource as EventDefinition).copyWith(
          id: newId == null ? resource.id : newId,
          meta: _updateMetaVersion(oldMeta));
    case 'Evidence':
      return (resource as Evidence).copyWith(
          id: newId == null ? resource.id : newId,
          meta: _updateMetaVersion(oldMeta));
    case 'EvidenceVariable':
      return (resource as EvidenceVariable).copyWith(
          id: newId == null ? resource.id : newId,
          meta: _updateMetaVersion(oldMeta));
    case 'ExampleScenario':
      return (resource as ExampleScenario).copyWith(
          id: newId == null ? resource.id : newId,
          meta: _updateMetaVersion(oldMeta));
    case 'ExplanationOfBenefit':
      return (resource as ExplanationOfBenefit).copyWith(
          id: newId == null ? resource.id : newId,
          meta: _updateMetaVersion(oldMeta));
    case 'FamilyMemberHistory':
      return (resource as FamilyMemberHistory).copyWith(
          id: newId == null ? resource.id : newId,
          meta: _updateMetaVersion(oldMeta));
    case 'Flag':
      return (resource as Flag).copyWith(
          id: newId == null ? resource.id : newId,
          meta: _updateMetaVersion(oldMeta));
    case 'Goal':
      return (resource as Goal).copyWith(
          id: newId == null ? resource.id : newId,
          meta: _updateMetaVersion(oldMeta));
    case 'GraphDefinition':
      return (resource as GraphDefinition).copyWith(
          id: newId == null ? resource.id : newId,
          meta: _updateMetaVersion(oldMeta));
    case 'Group':
      return (resource as Group).copyWith(
          id: newId == null ? resource.id : newId,
          meta: _updateMetaVersion(oldMeta));
    case 'GuidanceResponse':
      return (resource as GuidanceResponse).copyWith(
          id: newId == null ? resource.id : newId,
          meta: _updateMetaVersion(oldMeta));
    case 'HealthcareService':
      return (resource as HealthcareService).copyWith(
          id: newId == null ? resource.id : newId,
          meta: _updateMetaVersion(oldMeta));
    case 'ImagingStudy':
      return (resource as ImagingStudy).copyWith(
          id: newId == null ? resource.id : newId,
          meta: _updateMetaVersion(oldMeta));
    case 'Immunization':
      return (resource as Immunization).copyWith(
          id: newId == null ? resource.id : newId,
          meta: _updateMetaVersion(oldMeta));
    case 'ImmunizationEvaluation':
      return (resource as ImmunizationEvaluation).copyWith(
          id: newId == null ? resource.id : newId,
          meta: _updateMetaVersion(oldMeta));
    case 'ImmunizationRecommendation':
      return (resource as ImmunizationRecommendation).copyWith(
          id: newId == null ? resource.id : newId,
          meta: _updateMetaVersion(oldMeta));
    case 'ImplementationGuide':
      return (resource as ImplementationGuide).copyWith(
          id: newId == null ? resource.id : newId,
          meta: _updateMetaVersion(oldMeta));
    case 'InsurancePlan':
      return (resource as InsurancePlan).copyWith(
          id: newId == null ? resource.id : newId,
          meta: _updateMetaVersion(oldMeta));
    case 'Invoice':
      return (resource as Invoice).copyWith(
          id: newId == null ? resource.id : newId,
          meta: _updateMetaVersion(oldMeta));
    case 'Library':
      return (resource as Library).copyWith(
          id: newId == null ? resource.id : newId,
          meta: _updateMetaVersion(oldMeta));
    case 'Linkage':
      return (resource as Linkage).copyWith(
          id: newId == null ? resource.id : newId,
          meta: _updateMetaVersion(oldMeta));
    case 'List':
      return (resource as List_).copyWith(
          id: newId == null ? resource.id : newId,
          meta: _updateMetaVersion(oldMeta));
    case 'Location':
      return (resource as Location).copyWith(
          id: newId == null ? resource.id : newId,
          meta: _updateMetaVersion(oldMeta));
    case 'Measure':
      return (resource as Measure).copyWith(
          id: newId == null ? resource.id : newId,
          meta: _updateMetaVersion(oldMeta));
    case 'MeasureReport':
      return (resource as MeasureReport).copyWith(
          id: newId == null ? resource.id : newId,
          meta: _updateMetaVersion(oldMeta));
    case 'Media':
      return (resource as Media).copyWith(
          id: newId == null ? resource.id : newId,
          meta: _updateMetaVersion(oldMeta));
    case 'Medication':
      return (resource as Medication).copyWith(
          id: newId == null ? resource.id : newId,
          meta: _updateMetaVersion(oldMeta));
    case 'MedicationAdministration':
      return (resource as MedicationAdministration).copyWith(
          id: newId == null ? resource.id : newId,
          meta: _updateMetaVersion(oldMeta));
    case 'MedicationDispense':
      return (resource as MedicationDispense).copyWith(
          id: newId == null ? resource.id : newId,
          meta: _updateMetaVersion(oldMeta));
    case 'MedicationKnowledge':
      return (resource as MedicationKnowledge).copyWith(
          id: newId == null ? resource.id : newId,
          meta: _updateMetaVersion(oldMeta));
    case 'MedicationRequest':
      return (resource as MedicationRequest).copyWith(
          id: newId == null ? resource.id : newId,
          meta: _updateMetaVersion(oldMeta));
    case 'MedicationStatement':
      return (resource as MedicationStatement).copyWith(
          id: newId == null ? resource.id : newId,
          meta: _updateMetaVersion(oldMeta));
    case 'MedicinalProduct':
      return (resource as MedicinalProduct).copyWith(
          id: newId == null ? resource.id : newId,
          meta: _updateMetaVersion(oldMeta));
    case 'MedicinalProductAuthorization':
      return (resource as MedicinalProductAuthorization).copyWith(
          id: newId == null ? resource.id : newId,
          meta: _updateMetaVersion(oldMeta));
    case 'MedicinalProductContraindication':
      return (resource as MedicinalProductContraindication).copyWith(
          id: newId == null ? resource.id : newId,
          meta: _updateMetaVersion(oldMeta));
    case 'MedicinalProductIndication':
      return (resource as MedicinalProductIndication).copyWith(
          id: newId == null ? resource.id : newId,
          meta: _updateMetaVersion(oldMeta));
    case 'MedicinalProductIngredient':
      return (resource as MedicinalProductIngredient).copyWith(
          id: newId == null ? resource.id : newId,
          meta: _updateMetaVersion(oldMeta));
    case 'MedicinalProductInteraction':
      return (resource as MedicinalProductInteraction).copyWith(
          id: newId == null ? resource.id : newId,
          meta: _updateMetaVersion(oldMeta));
    case 'MedicinalProductManufactured':
      return (resource as MedicinalProductManufactured).copyWith(
          id: newId == null ? resource.id : newId,
          meta: _updateMetaVersion(oldMeta));
    case 'MedicinalProductPackaged':
      return (resource as MedicinalProductPackaged).copyWith(
          id: newId == null ? resource.id : newId,
          meta: _updateMetaVersion(oldMeta));
    case 'MedicinalProductPharmaceutical':
      return (resource as MedicinalProductPharmaceutical).copyWith(
          id: newId == null ? resource.id : newId,
          meta: _updateMetaVersion(oldMeta));
    case 'MedicinalProductUndesirableEffect':
      return (resource as MedicinalProductUndesirableEffect).copyWith(
          id: newId == null ? resource.id : newId,
          meta: _updateMetaVersion(oldMeta));
    case 'MessageDefinition':
      return (resource as MessageDefinition).copyWith(
          id: newId == null ? resource.id : newId,
          meta: _updateMetaVersion(oldMeta));
    case 'MessageHeader':
      return (resource as MessageHeader).copyWith(
          id: newId == null ? resource.id : newId,
          meta: _updateMetaVersion(oldMeta));
    case 'MolecularSequence':
      return (resource as MolecularSequence).copyWith(
          id: newId == null ? resource.id : newId,
          meta: _updateMetaVersion(oldMeta));
    case 'NamingSystem':
      return (resource as NamingSystem).copyWith(
          id: newId == null ? resource.id : newId,
          meta: _updateMetaVersion(oldMeta));
    case 'NutritionOrder':
      return (resource as NutritionOrder).copyWith(
          id: newId == null ? resource.id : newId,
          meta: _updateMetaVersion(oldMeta));
    case 'Observation':
      return (resource as Observation).copyWith(
          id: newId == null ? resource.id : newId,
          meta: _updateMetaVersion(oldMeta));
    case 'ObservationDefinition':
      return (resource as ObservationDefinition).copyWith(
          id: newId == null ? resource.id : newId,
          meta: _updateMetaVersion(oldMeta));
    case 'OperationDefinition':
      return (resource as OperationDefinition).copyWith(
          id: newId == null ? resource.id : newId,
          meta: _updateMetaVersion(oldMeta));
    case 'OperationOutcome':
      return (resource as OperationOutcome).copyWith(
          id: newId == null ? resource.id : newId,
          meta: _updateMetaVersion(oldMeta));
    case 'Organization':
      return (resource as Organization).copyWith(
          id: newId == null ? resource.id : newId,
          meta: _updateMetaVersion(oldMeta));
    case 'OrganizationAffiliation':
      return (resource as OrganizationAffiliation).copyWith(
          id: newId == null ? resource.id : newId,
          meta: _updateMetaVersion(oldMeta));
    case 'Parameters':
      return (resource as Parameters).copyWith(
          id: newId == null ? resource.id : newId,
          meta: _updateMetaVersion(oldMeta));
    case 'Patient':
      return (resource as Patient).copyWith(
          id: newId == null ? resource.id : newId,
          meta: _updateMetaVersion(oldMeta));
    case 'PaymentNotice':
      return (resource as PaymentNotice).copyWith(
          id: newId == null ? resource.id : newId,
          meta: _updateMetaVersion(oldMeta));
    case 'PaymentReconciliation':
      return (resource as PaymentReconciliation).copyWith(
          id: newId == null ? resource.id : newId,
          meta: _updateMetaVersion(oldMeta));
    case 'Person':
      return (resource as Person).copyWith(
          id: newId == null ? resource.id : newId,
          meta: _updateMetaVersion(oldMeta));
    case 'PlanDefinition':
      return (resource as PlanDefinition).copyWith(
          id: newId == null ? resource.id : newId,
          meta: _updateMetaVersion(oldMeta));
    case 'Practitioner':
      return (resource as Practitioner).copyWith(
          id: newId == null ? resource.id : newId,
          meta: _updateMetaVersion(oldMeta));
    case 'PractitionerRole':
      return (resource as PractitionerRole).copyWith(
          id: newId == null ? resource.id : newId,
          meta: _updateMetaVersion(oldMeta));
    case 'Procedure':
      return (resource as Procedure).copyWith(
          id: newId == null ? resource.id : newId,
          meta: _updateMetaVersion(oldMeta));
    case 'Provenance':
      return (resource as Provenance).copyWith(
          id: newId == null ? resource.id : newId,
          meta: _updateMetaVersion(oldMeta));
    case 'Questionnaire':
      return (resource as Questionnaire).copyWith(
          id: newId == null ? resource.id : newId,
          meta: _updateMetaVersion(oldMeta));
    case 'QuestionnaireResponse':
      return (resource as QuestionnaireResponse).copyWith(
          id: newId == null ? resource.id : newId,
          meta: _updateMetaVersion(oldMeta));
    case 'RelatedPerson':
      return (resource as RelatedPerson).copyWith(
          id: newId == null ? resource.id : newId,
          meta: _updateMetaVersion(oldMeta));
    case 'RequestGroup':
      return (resource as RequestGroup).copyWith(
          id: newId == null ? resource.id : newId,
          meta: _updateMetaVersion(oldMeta));
    case 'ResearchDefinition':
      return (resource as ResearchDefinition).copyWith(
          id: newId == null ? resource.id : newId,
          meta: _updateMetaVersion(oldMeta));
    case 'ResearchElementDefinition':
      return (resource as ResearchElementDefinition).copyWith(
          id: newId == null ? resource.id : newId,
          meta: _updateMetaVersion(oldMeta));
    case 'ResearchStudy':
      return (resource as ResearchStudy).copyWith(
          id: newId == null ? resource.id : newId,
          meta: _updateMetaVersion(oldMeta));
    case 'ResearchSubject':
      return (resource as ResearchSubject).copyWith(
          id: newId == null ? resource.id : newId,
          meta: _updateMetaVersion(oldMeta));
    case 'RiskAssessment':
      return (resource as RiskAssessment).copyWith(
          id: newId == null ? resource.id : newId,
          meta: _updateMetaVersion(oldMeta));
    case 'RiskEvidenceSynthesis':
      return (resource as RiskEvidenceSynthesis).copyWith(
          id: newId == null ? resource.id : newId,
          meta: _updateMetaVersion(oldMeta));
    case 'Schedule':
      return (resource as Schedule).copyWith(
          id: newId == null ? resource.id : newId,
          meta: _updateMetaVersion(oldMeta));
    case 'SearchParameter':
      return (resource as SearchParameter).copyWith(
          id: newId == null ? resource.id : newId,
          meta: _updateMetaVersion(oldMeta));
    case 'ServiceRequest':
      return (resource as ServiceRequest).copyWith(
          id: newId == null ? resource.id : newId,
          meta: _updateMetaVersion(oldMeta));
    case 'Slot':
      return (resource as Slot).copyWith(
          id: newId == null ? resource.id : newId,
          meta: _updateMetaVersion(oldMeta));
    case 'Specimen':
      return (resource as Specimen).copyWith(
          id: newId == null ? resource.id : newId,
          meta: _updateMetaVersion(oldMeta));
    case 'SpecimenDefinition':
      return (resource as SpecimenDefinition).copyWith(
          id: newId == null ? resource.id : newId,
          meta: _updateMetaVersion(oldMeta));
    case 'StructureDefinition':
      return (resource as StructureDefinition).copyWith(
          id: newId == null ? resource.id : newId,
          meta: _updateMetaVersion(oldMeta));
    case 'StructureMap':
      return (resource as StructureMap).copyWith(
          id: newId == null ? resource.id : newId,
          meta: _updateMetaVersion(oldMeta));
    case 'Subscription':
      return (resource as Subscription).copyWith(
          id: newId == null ? resource.id : newId,
          meta: _updateMetaVersion(oldMeta));
    case 'Substance':
      return (resource as Substance).copyWith(
          id: newId == null ? resource.id : newId,
          meta: _updateMetaVersion(oldMeta));
    case 'SubstanceNucleicAcid':
      return (resource as SubstanceNucleicAcid).copyWith(
          id: newId == null ? resource.id : newId,
          meta: _updateMetaVersion(oldMeta));
    case 'SubstancePolymer':
      return (resource as SubstancePolymer).copyWith(
          id: newId == null ? resource.id : newId,
          meta: _updateMetaVersion(oldMeta));
    case 'SubstanceProtein':
      return (resource as SubstanceProtein).copyWith(
          id: newId == null ? resource.id : newId,
          meta: _updateMetaVersion(oldMeta));
    case 'SubstanceReferenceInformation':
      return (resource as SubstanceReferenceInformation).copyWith(
          id: newId == null ? resource.id : newId,
          meta: _updateMetaVersion(oldMeta));
    case 'SubstanceSourceMaterial':
      return (resource as SubstanceSourceMaterial).copyWith(
          id: newId == null ? resource.id : newId,
          meta: _updateMetaVersion(oldMeta));
    case 'SubstanceSpecification':
      return (resource as SubstanceSpecification).copyWith(
          id: newId == null ? resource.id : newId,
          meta: _updateMetaVersion(oldMeta));
    case 'SupplyDelivery':
      return (resource as SupplyDelivery).copyWith(
          id: newId == null ? resource.id : newId,
          meta: _updateMetaVersion(oldMeta));
    case 'SupplyRequest':
      return (resource as SupplyRequest).copyWith(
          id: newId == null ? resource.id : newId,
          meta: _updateMetaVersion(oldMeta));
    case 'Task':
      return (resource as Task).copyWith(
          id: newId == null ? resource.id : newId,
          meta: _updateMetaVersion(oldMeta));
    case 'TerminologyCapabilities':
      return (resource as TerminologyCapabilities).copyWith(
          id: newId == null ? resource.id : newId,
          meta: _updateMetaVersion(oldMeta));
    case 'TestReport':
      return (resource as TestReport).copyWith(
          id: newId == null ? resource.id : newId,
          meta: _updateMetaVersion(oldMeta));
    case 'TestScript':
      return (resource as TestScript).copyWith(
          id: newId == null ? resource.id : newId,
          meta: _updateMetaVersion(oldMeta));
    case 'ValueSet':
      return (resource as ValueSet).copyWith(
          id: newId == null ? resource.id : newId,
          meta: _updateMetaVersion(oldMeta));
    case 'VerificationResult':
      return (resource as VerificationResult).copyWith(
          id: newId == null ? resource.id : newId,
          meta: _updateMetaVersion(oldMeta));
    case 'VisionPrescription':
      return (resource as VisionPrescription).copyWith(
          id: newId == null ? resource.id : newId,
          meta: _updateMetaVersion(oldMeta));
  }
  return null;
}
