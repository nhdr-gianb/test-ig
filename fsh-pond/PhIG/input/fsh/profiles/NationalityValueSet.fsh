Profile: NationalityValueSet
Parent: ValueSet
Id: NationalityValueSet
* ^url = "https://example.org/fhir/StructureDefinition/NationalityValueSet"
* ^status = #draft
* compose.include.concept ^slicing.discriminator.type = #value
* compose.include.concept ^slicing.discriminator.path = "$this"
* compose.include.concept ^slicing.rules = #open
* compose.include.concept contains Filipino 0..*