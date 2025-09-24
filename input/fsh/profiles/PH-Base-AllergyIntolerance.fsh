Profile: PH_Base_AllergyIntolerance
Parent: AllergyIntolerance
Id: PH-Base-AllergyIntolerance
Title: "PH Base AllergyIntolerance"
Description: "Risk of harmful or undesirable, physiological response which is unique to an individual and associated with exposure to a substance."
* ^url = "https://test.ph/fhir/StructureDefinition/PH-Base-AllergyIntolerance"
* insert MetaData
* extension contains
    OrganizationExtension named organization and
    RecordedDate named recordedDate
* extension[recordedDate] ^definition = "The recordedDate represents when this particular record was uploaded into the NHDR."

//  Marked as minimum data sets from the JAO
* extension[recordedDate] MS
* extension[organization] MS