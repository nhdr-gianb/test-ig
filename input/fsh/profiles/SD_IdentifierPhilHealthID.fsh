// Profile: PhilHealthID
// Parent: Identifier
// Id: PhilHealthID
// Title: "PIN - PhilHealth Identification Number"
// Description: "The permanent and unique number issued by PhilHealth to individual members and to each and every dependent."
// * ^url = "https://nhdr.gov.ph/fhir/StructureDefinition/PhilHealthID"
// * insert MetaData
// * type = $IdentifierType#NIIP "National Insurance Payor Identifier (Payor)" (exactly)
// // * type ^fixedCodeableConcept.text = "PID"
// * type.text 1..
// * type.text = "PIN - PhilHealth Identification Number" (exactly)
// * type.text ^short = "Must declare \"PIN - PhilHealth Identification Number\" in the identifier.type.text field" //  There seems to be a bug with declaring a fixed value for type.text.
// * type.text ^definition = "PhilHealth ID"
// * system ..0
// * period ..0

Profile: PhilHealthID
Parent: Identifier
Id: PhilHealthID
Title: "PIN - PhilHealth Identification Number"
Description: "The permanent and unique number issued by PhilHealth to individual members and to each and every dependent."
* ^url = "https://nhdr.gov.ph/fhir/StructureDefinition/PhilHealthID"
* type 1..
* type = $IdentifierType#NIIP "National Insurance Payor Identifier (Payor)"
* type.text = "PhilHealth ID" (exactly)
* system 1..
* system = "https://terminology.hl7.org/5.1.0/CodeSystem-v2-0203.html"
* value 1..
* value ^short = "PIN - PhilHealth Identification Number"
* value ^example.label = "PhilHealth ID"
* value ^example.valueString = "PH123219042123"
// * value ^maxLength = 16
