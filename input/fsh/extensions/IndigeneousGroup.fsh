Extension: IndigeneousGroup
Id: IndigeneousGroup
Context: Patient
* ^url = "https://philhealth.gov.ph/fhir/StructureDefinition/IndigeneousGroup"
* ^status = #draft
* value[x] only CodeableConcept
* value[x].coding from $IndigenousGroupValueSet (required)
* value[x].coding ^binding.description = "ValueSet"