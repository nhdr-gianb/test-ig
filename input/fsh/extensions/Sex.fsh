Extension: Sex
Id: Sex
Context: Practitioner, Patient, Person
Title: "Sex at birth"
Description: "Extension to capture the sex of a patient, practitioner, or person."
* ^url = "https://test.ph/fhir/StructureDefinition/Sex"
* insert MetaData
* value[x] only code
* value[x] from $SexVS (required)
* value[x] ^binding.description = "Sex ValueSet"