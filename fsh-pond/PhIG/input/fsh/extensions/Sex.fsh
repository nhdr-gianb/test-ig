Extension: Sex
Id: Sex
Context: Practitioner, Patient, Person
* ^url = "https://example.org/fhir/StructureDefinition/Sex"
* ^status = #draft
* ^useContext.code = $loinc#76689-9
* ^useContext.valueCodeableConcept = $loinc#76689-9
* ^useContext.valueCodeableConcept.text = "Sex"
* value[x] only $SexValueSet
* value[x] from $SexValueSet_1 (required)
* value[x] ^binding.description = "Sex ValueSet"