Profile: PH_Base_Procedure
Parent: Procedure
Id: PH-Base-Procedure
Title: "PH Base Procedure"
Description: "An action that is or was performed on or for a patient. This can be a physical intervention like an operation, or less invasive like long term services, counseling, or hypnotherapy."
* ^url = "https://test.ph/fhir/StructureDefinition/PH-Base-Procedure"
* insert MetaData
* extension contains
    OrganizationExtension named organization 0..1 and
    RecordedDate named recordedDate 0..1

//  Marked as minimum data sets from the JAO
* encounter MS
* subject MS
* extension[organization] MS
* identifier MS
* category MS
* code MS
* performed[x] MS
* outcome MS
* note MS
* extension[recordedDate] MS