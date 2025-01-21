Profile: MyPatient
Parent: Patient
Id: MyPatient
* ^url = "https://example.org/fhir/StructureDefinition/MyPatient"
* ^status = #draft
* name ^definition = "A name associated with the individual. This is the name of the patient"
* name.extension contains $cqf-calculatedValue named calculatedValue 0..1
* name.extension[calculatedValue] ^short = "A calculated value. This is a sample extension"
* name.extension[calculatedValue] ^isModifier = false