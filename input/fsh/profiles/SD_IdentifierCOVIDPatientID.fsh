Profile: COVIDPatientID
Parent: Identifier
Id: COVIDPatientID
Title: "COVID Patient Identification"
Description: "COVID Patient Identification"
* ^url = "https://nhdr.gov.ph/fhir/StructureDefinition/COVIDPatientID"
* type 1..
* type = $IdentifierType#COVID "COVID Kaya issued number"
* type.text = "COVID Kaya Issued ID" (exactly)
* system 1..
* system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* value 1..
* value ^example.label = "COVID Patient ID"
* value ^example.valueString = "CV1231902389"
// * value ^maxLength = 16
