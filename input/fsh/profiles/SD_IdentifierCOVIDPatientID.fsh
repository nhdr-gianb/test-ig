// Profile: COVIDPatientID
// Parent: Identifier
// Id: COVIDPatientID
// Title: "COVID Patient Identification"
// Description: "COVID Patient Identification"
// * ^url = "https://nhdr.gov.ph/fhir/StructureDefinition/COVIDPatientID"
// * insert MetaData
// * type = $IdentifierType#COVID "COVID Kaya issued number." (exactly)
// * type.text 1..
// * type.text = "Patient number as assigned for COVID Kaya" (exactly)
// // * type.text ^short = "Must declare \"PDD Reg. No.\" in the identifier.type.text field"
// * type.text ^definition = "COVID Kaya issued number"
// * system ..0
// * period ..0

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
* system = "https://terminology.hl7.org/5.1.0/CodeSystem-v2-0203.html"
* value 1..
* value ^example.label = "COVID Patient ID"
* value ^example.valueString = "CV1231902389"
// * value ^maxLength = 16