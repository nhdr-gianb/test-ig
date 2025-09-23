Profile: PH_Core_Patient_Claims
Parent: PH-Base-Patient
Id: PH-Core-Patient-Claims
Title: "PH Core Patient (Claims)"
Description: "Captures key demographic and administrative information about individuals receiving care or other health-related services."
* ^url = "https://test.ph/fhir/StructureDefinition/PH-Core-Patient-Claims"
* insert MetaData
* . ^short = "Information about an individual receiving health care services"
* . ^definition = "Demographics and other administrative information about an individual receiving care or other health-related services. The data in the resource covers the \"who\" information about the patient. Its attributes are focused on the demgraphic information necessary to support the administrative, financial and logistical procedures."
* identifier[philhealthID] 1..1 MS
* identifier[tinNo] 0..0
* identifier[sssNo] 0..0
* identifier[gsisNo] 0..0
* identifier[driverLicense] 0..0
* identifier[passportNo] 0..0
* name.family 0..1 MS
* name.given 0..* MS
* name.suffix 0..* MS
* birthDate 0..1 MS
* contact.relationship 0..* MS
* extension[sex] 0..1
* extension[religion] ..0
* extension[nationality] ..0
* extension[indigenousGroup] ..0
* extension[indigenousPeople] ..0
* extension[occupation] ..0