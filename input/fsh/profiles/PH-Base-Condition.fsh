Profile: PH_Base_Condition
Parent: Condition
Id: PH-Base-Condition
Title: "PH Base Condition"
Description: "A clinical condition, problem, diagnosis, or other event, situation, issue, or clinical concept that has risen to a level of concern."
* ^url = "https://test.ph/fhir/StructureDefinition/PH-Base-Condition"
* insert MetaData
* extension contains
    OrganizationExtension named organization 0..1 and
    RecordedDate named recordedDate 0..1
* extension[recordedDate] ^definition = "The recordedDate represents when this particular record was uploaded into the NHDR."

//  Marked as minimum data sets from the JAO
* encounter MS
* subject MS
* extension[organization] MS
* identifier MS
* category MS
* code MS
* severity MS
* onset[x] MS
* onsetDateTime MS
* note MS
* extension[recordedDate] MS