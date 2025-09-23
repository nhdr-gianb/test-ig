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
    Sex named sex 0..1 and
    $Nationality named nationality 0..* and
    Occupation named occupation 0..* and
    IndigenousGroup named indigenousGroup 0..* and
    IndigenousPeople named indigenousPeople 0..* and
    Religion named religion 0..* and
    RecordedDate named recordedDate 0..1
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier contains
    philhealthID 0..1 and
    tinNo 0..1 and
    sssNo 0..1 and
    gsisNo 0..1 and
    driverLicense 0..1 and
    passportNo 0..1
* identifier[philhealthID].system = "http://test.ph/fhir/Identifier/philhealth-id"
* identifier[philhealthID].type.coding = #NIIP
* identifier[tinNo].system = "http://test.ph/fhir/Identifier/pdd-id"
* identifier[tinNo].type.coding = #TAX
* identifier[sssNo].system = "http://test.ph/fhir/Identifier/tin-id"
* identifier[sssNo].type.coding = #SB
* identifier[gsisNo].system = "http://test.ph/fhir/Identifier/sss-gsis-id"
* identifier[gsisNo].type.coding = #SB
* identifier[driverLicense].system = "http://test.ph/fhir/Identifier/driverslicense"
* identifier[driverLicense].type.coding = #DL
* identifier[passportNo].system = "http://test.ph/fhir/Identifier/passportnumber"
* identifier[passportNo].type.coding = #PPN
* address only $SD_Address
* contact.address only $SD_Address
* generalPractitioner only Reference(PH_Base_Organization)
* generalPractitioner ^definition = "Patient's nominated care provider. Pertains to the Konsulta Health Care Provider"


//  Marked as minimum data sets from the JAO
// * identifier 0..* MS
// * active MS
// * name MS
// * telecom MS
// * extension[sex] MS
// * birthDate MS
// * deceased[x] MS
// * address MS
// * maritalStatus MS
// * extension[nationality] MS
// * extension[occupation] MS
