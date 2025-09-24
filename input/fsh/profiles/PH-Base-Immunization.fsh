Profile: PH_Base_Immunization
Parent: Immunization
Id: PH-Base-Immunization
Title: "PH Base Immunization"
Description: "Describes the event of a patient being administered a vaccine or a record of an immunization as reported by a patient, a clinician or another party."
* ^url = "https://test.ph/fhir/StructureDefinition/PH-Base-Immunization"
* insert MetaData
* extension contains
    OrganizationExtension named organization 0..1


//  Marked as minimum data sets from the JAO
* encounter MS
* patient MS
* extension[organization] MS
* identifier MS
* vaccineCode MS
* occurrence[x] MS
* note MS
* reasonCode MS
* reaction MS
* reaction.date MS
* reaction.detail MS
* recorded MS