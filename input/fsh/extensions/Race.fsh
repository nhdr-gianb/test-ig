Extension: Race
Id: Race
Context: Patient
Title: "Race"
Description: "Extension to capture the race of a patient."
* ^url = "https://test.ph/fhir/StructureDefinition/Race"
* insert MetaData
* value[x] only CodeableConcept
* value[x] from $RaceVS (required)
* value[x] ^binding.description = "Race ValueSet"