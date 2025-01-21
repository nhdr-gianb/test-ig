Profile: EncounterStatusValueSet
Parent: ValueSet
Id: EncounterStatusValueSet
* ^url = "https://example.org/fhir/StructureDefinition/EncounterStatusValueSet"
* ^status = #draft
* compose.include.concept ^slicing.description = "Status of the encounter"
* compose.include.concept ^slicing.rules = #open
* compose.include.concept contains
    Yes 0..* and
    No 0..*
* compose.include.concept[Yes].code = #Yes (exactly)
* compose.include.concept[Yes].display = "Yes" (exactly)
* compose.include.concept[No].code = #No (exactly)
* compose.include.concept[No].display = "No" (exactly)