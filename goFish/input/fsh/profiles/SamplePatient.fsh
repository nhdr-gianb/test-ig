Profile: SamplePatient
Parent: Patient
Id: SamplePatient
Description: "This is a sample patient"
* ^url = "https://example.org/fhir/StructureDefinition/SamplePatient"
* ^status = #draft
* extension contains
    FatherName named fatherName 0..* and
    Sibling named sibling 0..*
* extension[fatherName] ^isModifier = false
* extension[sibling] ^isModifier = false
* active ..0
* telecom ..0