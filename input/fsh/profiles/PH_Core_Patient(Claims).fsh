Profile: PH_Core_Patient_Claims
Parent: PH-Base-Patient
Id: PH-Core-Patient-Claims
Title: "PH Core Patient (Claims)"
Description: "Captures key demographic and administrative information about individuals receiving care or other health-related services."
* ^url = "https://test.ph/fhir/StructureDefinition/PH-Core-Patient-Claims"
* insert MetaData
* . ^short = "Information about an individual receiving health care services"
* . ^definition = "Demographics and other administrative information about an individual receiving care or other health-related services. The data in the resource covers the \"who\" information about the patient. Its attributes are focused on the demgraphic information necessary to support the administrative, financial and logistical procedures."
* extension contains Sex named sex 0..1
* identifier[PhilHealthID] 0..1 MS
* identifier[PDD] 0..1 
* identifier[TIN] 0..0
* identifier[SSS-GSIS] 0..0
* identifier[DriversLicense] 0..0
* identifier[PassportNumber] 0..0
* name.family 0..1 MS
* name.given 0..* MS
* name.suffix 0..* MS
* birthDate 0..1 MS
* contact.relationship 0..* MS
* extension[sex] 0..1 MS