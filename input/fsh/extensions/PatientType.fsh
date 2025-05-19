Extension: PatientType
Id: PatientType
Context: Patient
Title: "Patient Type"
Description: "Patient Type"
* ^url = "https://nhdr.gov.ph/fhir/StructureDefinition/PatientType"
* ^status = #draft
* value[x] only CodeableConcept
* value[x] from $PatientTypeVS (required)