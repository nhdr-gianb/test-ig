Extension: ExtEncounter
Id: ExtEncounter
Context: MedicationAdministration, MedicationStatement
* ^url = "https://example.org/fhir/StructureDefinition/ExtEncounter"
* ^status = #draft
* value[x] only Reference(Encounter)
* value[x] ^type.aggregation = #referenced