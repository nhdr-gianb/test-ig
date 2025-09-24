Profile: PH_Base_Observation
Parent: Observation
Id: PH-Base-Observation
Title: "PH Base Observation"
Description: "Measurements and simple assertions made about a patient, device or other subject."
* ^url = "https://test.ph/fhir/StructureDefinition/PH-Base-Observation"
* insert MetaData
* extension contains
    OrganizationExtension named organization 0..1 and
    RecordedDate named recordedDate 0..1

//  Marked as minimum data sets from the JAO
* encounter MS
* subject MS
* extension[organization] MS
* identifier MS
* status MS
* category MS
* code MS
* value[x] MS
* valueQuantity.code MS
* valueQuantity.value MS
* performer MS
* interpretation MS
* note MS
* specimen MS
* extension[recordedDate] MS