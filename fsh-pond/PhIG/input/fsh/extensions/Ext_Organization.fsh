Extension: Ext_Organization
Id: Ext_Organization
Context: Condition, Procedure, Observation, Specimen, DiagnosticReport, MedicationAdministration, MedicationStatement, Immunization
* ^url = "https://example.org/fhir/StructureDefinition/Ext_Organization"
* ^status = #draft
* value[x] only Reference(Organization)
* value[x] ^type.aggregation = #referenced