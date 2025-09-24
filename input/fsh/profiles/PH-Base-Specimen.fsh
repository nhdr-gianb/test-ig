Profile: PH_Base_Specimen
Parent: Specimen
Id: PH-Base-Specimen
Title: "PH Base Specimen"
Description: "Measurements and simple assertions made about a patient, device or other subject."
* ^url = "https://test.ph/fhir/StructureDefinition/PH-Base-Specimen"
* insert MetaData
* extension contains
    OrganizationExtension named organization 0..1 and
    RecordedDate named recordedDate 0..1

//  Marked as minimum data sets from the JAO
* identifier MS
* subject MS
* extension[organization] MS
* accessionIdentifier MS
* type MS
* receivedTime MS
* collection MS
* collection.collected[x] MS
* collection.method MS
* note MS
* extension[recordedDate] MS