Extension: PatientType
Id: PatientType
Context: Patient
Title: "Patient Type"
Description: "Patient Type"
* ^url = "https://test.ph/fhir/StructureDefinition/PatientType"
* insert MetaData
* value[x] only CodeableConcept
* value[x] from $PatientTypeVS (required)