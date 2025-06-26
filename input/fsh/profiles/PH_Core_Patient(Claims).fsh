Profile: PH_Core_Patient_Claims
Parent: PH-Base-Patient
Id: PH-Core-Patient-Claims
Title: "PH Core Patient (Claims)"
Description: "Captures key demographic and administrative information about individuals receiving care or other health-related services."
* ^url = "https://test.ph/fhir/StructureDefinition/PH-Core-Patient-Claims"
* insert MetaData
* . ^short = "Information about an individual receiving health care services"
* . ^definition = "Demographics and other administrative information about an individual receiving care or other health-related services. The data in the resource covers the \"who\" information about the patient. Its attributes are focused on the demgraphic information necessary to support the administrative, financial and logistical procedures."
* identifier[PhilHealthID] 1..1
* identifier[PDD] 0..1 
* identifier[TIN] 0..0
* identifier[SSS-GSIS] 0..0
* identifier[DriversLicense] 0..0
* identifier[PassportNumber] 0..0
