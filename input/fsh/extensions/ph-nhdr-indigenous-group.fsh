Extension: PHNhdrIndigenousGroup
Id: ph-nhdr-indigenous-group
Context: Patient
* value[x] only CodeableConcept
* value[x].coding from $IndigenousGroupValueSet (required)
* value[x].coding ^binding.description = "ValueSet"