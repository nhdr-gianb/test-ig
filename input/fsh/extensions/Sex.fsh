Extension: Sex
Id: Sex
Context: Practitioner, Patient, Person
Title: "Sex at birth"
Description: "Extension to capture the sex of a patient, practitioner, or person."
* ^url = "https://test.ph/fhir/StructureDefinition/Sex"
* insert MetaData
* ^useContext.code = $LOINC#76689-9
* ^useContext.valueCodeableConcept = $LOINC#76689-9
* ^useContext.valueCodeableConcept.text = "Sex"
* value[x] only code
* value[x] from $SexVS (required)
* value[x] ^binding.description = "Sex ValueSet"