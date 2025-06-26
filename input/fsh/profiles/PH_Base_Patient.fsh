Profile: PH_Base_Patient
Parent: Patient
Id: PH-Base-Patient
Title: "PH Base Patient"
Description: "Captures key demographic and administrative information about individuals receiving care or other health-related services."
* ^url = "https://test.ph/fhir/StructureDefinition/PH-Base-Patient"
* insert MetaData
* . ^short = "Information about an individual receiving health care services"
* . ^definition = "Demographics and other administrative information about an individual receiving care or other health-related services. The data in the resource covers the \"who\" information about the patient. Its attributes are focused on the demgraphic information necessary to support the administrative, financial and logistical procedures."
* extension contains
    Sex named sex 0..1
* modifierExtension ..0
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier contains
    PhilHealthID 0..1 and
    PDD 0..1 and
    TIN 0..1 and
    SSS-GSIS 0..2 and
    DriversLicense 0..1 and
    PassportNumber 0..1
* identifier[PhilHealthID].system = "http://test.ph/fhir/Identifier/philhealth-id"
* identifier[PhilHealthID].type.coding = #NIIP
* identifier[PDD].system = "http://test.ph/fhir/Identifier/pdd-id"
* identifier[PDD].type.coding = #PDD
* identifier[TIN].system = "http://test.ph/fhir/Identifier/tin-id"
* identifier[TIN].type.coding = #TAX
* identifier[SSS-GSIS].system = "http://test.ph/fhir/Identifier/sss-gsis-id"
* identifier[SSS-GSIS].type.coding = #SB
* identifier[DriversLicense].system = "http://test.ph/fhir/Identifier/driverslicense"
* identifier[DriversLicense].type.coding = #DL
* identifier[PassportNumber].system = "http://test.ph/fhir/Identifier/passportnumber"
* identifier[PassportNumber].type.coding = #PPN
* address only $SD_Address
* contact.address only $SD_Address
* generalPractitioner only Reference(PH_Base_Organization)
* generalPractitioner ^definition = "Patient's nominated care provider. Pertains to the Konsulta Health Care Provider"