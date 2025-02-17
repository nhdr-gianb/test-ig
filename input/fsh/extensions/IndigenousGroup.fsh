Extension: IndigenousGroup
Id: IndigenousGroup
Context: Patient
Description: "Indigenous group that the patient belongs to."
* ^url = "https://nhdr.gov.ph/fhir/StructureDefinition/IndigenousGroup"
* ^status = #draft
* value[x] only CodeableConcept
* value[x].coding from IndigenousGroupValueSet (required)
* value[x].coding ^binding.description = "ValueSet"