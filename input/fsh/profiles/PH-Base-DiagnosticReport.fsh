Profile: PH_Base_DiagnosticReport
Parent: DiagnosticReport
Id: PH-Base-DiagnosticReport
Title: "PH Base DiagnosticReport"
Description: "The findings and interpretation of diagnostic tests performed on the patient."
* ^url = "https://test.ph/fhir/StructureDefinition/PH-Base-DiagnosticReport"
* insert MetaData
* extension contains OrganizationExtension named organization 0..1

//  Marked as minimum data sets from the JAO
* encounter MS
* extension[organization] MS
* subject MS
* identifier MS
* status MS
* conclusionCode MS
* specimen MS